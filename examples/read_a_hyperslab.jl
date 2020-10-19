using CEnum

include("../src/libminc_common.jl")
include("../src/libminc_api.jl")

const libminc2 = "libminc2"

vol = Ref{mihandle_t}()
miopen_volume("/micehome/chammill/MR160_105-9999-01_002_t1_dbl.mnc", 1, vol)

dims = Array{midimhandle_t}(undef, 3)
miget_volume_dimensions(vol[], MI_DIMCLASS_ANY, 0, MI_DIMORDER_FILE, 3, dims)

dim_sizes = [misize_t(0), 0, 0]
miget_dimension_sizes(dims, 3, dim_sizes)

hs = Array{Float64}(undef, dim_sizes[1], dim_sizes[2], dim_sizes[3])
miget_real_value_hyperslab(vol[], MI_TYPE_DOUBLE, [misize_t(0),0,0], dim_sizes, hs)

miclose_volume(vol[])


