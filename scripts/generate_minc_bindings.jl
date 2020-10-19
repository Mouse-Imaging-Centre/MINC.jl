using Clang

minc_dir = "/axiom2/projects/software/arch/linux-xenial-xerus/minc-toolkit/1.9.17/"
minc_inc = joinpath(minc_dir, "include")

minc_headers = #lol
    readdir(minc_inc) |>
    d -> filter(x -> startswith(x, "minc") & endswith(x, ".h"), d) |>
    d -> map(f -> joinpath(minc_inc, f), d)

# create a work context
ctx = DefaultContext()

# parse headers
parse_headers!(ctx,
               [joinpath(minc_inc, "minc2.h")], #everything needs to funnel through this header
               includes=[joinpath(minc_dir, "include")
                         , "/usr/lib/gcc/x86_64-linux-gnu/5/include/"
                         , "/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed/"],
               args = ["-I"*joinpath(minc_dir, "include")]
               )

ctx.libname = "libminc2"
ctx.options["is_function_strictly_typed"] = false
ctx.options["is_struct_mutable"] = false

# write output
api_file = joinpath(@__DIR__, "../src/libminc_api.jl")
api_stream = open(api_file, "w")

for trans_unit in ctx.trans_units
    root_cursor = getcursor(trans_unit)
    push!(ctx.cursor_stack, root_cursor)
    header = spelling(root_cursor)
    @info "wrapping header: $header ..."
    # loop over all of the child cursors and wrap them, if appropriate.
    ctx.children = children(root_cursor)
    for (i, child) in enumerate(ctx.children)
        child_name = name(child)
        child_header = filename(child)
        ctx.children_index = i
        # choose which cursor to wrap
        startswith(child_name, "__") && continue  # skip compiler definitions
        child_name in keys(ctx.common_buffer) && continue  # already wrapped
        !(child_header in minc_headers ||
          child_name in ["hsize_t", "hid_t", "NC_MAX_VARS"]) && continue  # skip if cursor filename is not in the headers to be wrapped
        child_name in ["MI2_FILLVALUE_EPSILON", "MI2_ROOTVARIABLE_ID", "miget_hyperslab_size_hdf"] && continue # TODO: Skip for now, fix
        wrap!(ctx, child)
    end
    @info "writing $(api_file)"
    println(api_stream, "# Julia wrapper for header: $(basename(header))")
    println(api_stream, "# Automatically generated using Clang.jl\n")
    print_buffer(api_stream, ctx.api_buffer)
    empty!(ctx.api_buffer)  # clean up api_buffer for the next header
end
close(api_stream)

# write "common" definitions: types, typealiases, etc.
common_file = joinpath(@__DIR__, "../src/libminc_common.jl")
open(common_file, "w") do f
    println(f, "# Automatically generated using Clang.jl\n")
    print_buffer(f, dump_to_buffer(ctx.common_buffer))
end
