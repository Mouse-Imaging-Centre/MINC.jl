# Julia wrapper for header: minc2.h
# Automatically generated using Clang.jl


function MI2_save_routine_name(name)
    ccall((:MI2_save_routine_name, libminc2), Cint, (Cstring,), name)
end

function MI2_return()
    ccall((:MI2_return, libminc2), Cint, ())
end

function MI2_return_error()
    ccall((:MI2_return_error, libminc2), Cint, ())
end

function MI2_log_pkg_error2(p1, p2)
    ccall((:MI2_log_pkg_error2, libminc2), Cvoid, (Cint, Cstring), p1, p2)
end

function MI2_log_pkg_error3(p1, p2, p3)
    ccall((:MI2_log_pkg_error3, libminc2), Cvoid, (Cint, Cstring, Cstring), p1, p2, p3)
end

function MI2_log_sys_error1(p1)
    ccall((:MI2_log_sys_error1, libminc2), Cvoid, (Cstring,), p1)
end

function mi2log_init(name)
    ccall((:mi2log_init, libminc2), Cvoid, (Cstring,), name)
end

function mi2log_set_verbosity(lvl)
    ccall((:mi2log_set_verbosity, libminc2), Cint, (Cint,), lvl)
end

function MI_save_routine_name(name)
    ccall((:MI_save_routine_name, libminc2), Cint, (Cstring,), name)
end

function MI_return()
    ccall((:MI_return, libminc2), Cint, ())
end

function MI_return_error()
    ccall((:MI_return_error, libminc2), Cint, ())
end

function MI_log_pkg_error2(p1, p2)
    ccall((:MI_log_pkg_error2, libminc2), Cvoid, (Cint, Cstring), p1, p2)
end

function MI_log_pkg_error3(p1, p2, p3)
    ccall((:MI_log_pkg_error3, libminc2), Cvoid, (Cint, Cstring, Cstring), p1, p2, p3)
end

function MI_log_sys_error1(p1)
    ccall((:MI_log_sys_error1, libminc2), Cvoid, (Cstring,), p1)
end

function milist_start(vol, path, flags, handle)
    ccall((:milist_start, libminc2), Cint, (mihandle_t, Cstring, Cint, Ptr{milisthandle_t}), vol, path, flags, handle)
end

function milist_attr_next(vol, handle, path, maxpath, name, maxname)
    ccall((:milist_attr_next, libminc2), Cint, (mihandle_t, milisthandle_t, Cstring, Cint, Cstring, Cint), vol, handle, path, maxpath, name, maxname)
end

function milist_finish(handle)
    ccall((:milist_finish, libminc2), Cint, (milisthandle_t,), handle)
end

function milist_grp_next(handle, path, maxpath)
    ccall((:milist_grp_next, libminc2), Cint, (milisthandle_t, Cstring, Cint), handle, path, maxpath)
end

function micreate_group(vol, path, name)
    ccall((:micreate_group, libminc2), Cint, (mihandle_t, Cstring, Cstring), vol, path, name)
end

function midelete_attr(vol, path, name)
    ccall((:midelete_attr, libminc2), Cint, (mihandle_t, Cstring, Cstring), vol, path, name)
end

function midelete_group(vol, path, name)
    ccall((:midelete_group, libminc2), Cint, (mihandle_t, Cstring, Cstring), vol, path, name)
end

function miget_attr_length(vol, path, name, length)
    ccall((:miget_attr_length, libminc2), Cint, (mihandle_t, Cstring, Cstring, Ptr{Csize_t}), vol, path, name, length)
end

function miget_attr_type(vol, path, name, data_type)
    ccall((:miget_attr_type, libminc2), Cint, (mihandle_t, Cstring, Cstring, Ptr{mitype_t}), vol, path, name, data_type)
end

function micopy_attr(vol, path, new_vol)
    ccall((:micopy_attr, libminc2), Cint, (mihandle_t, Cstring, mihandle_t), vol, path, new_vol)
end

function miget_attr_values(vol, data_type, path, name, length, values)
    ccall((:miget_attr_values, libminc2), Cint, (mihandle_t, mitype_t, Cstring, Cstring, Csize_t, Ptr{Cvoid}), vol, data_type, path, name, length, values)
end

function miset_attr_values(vol, data_type, path, name, length, values)
    ccall((:miset_attr_values, libminc2), Cint, (mihandle_t, mitype_t, Cstring, Cstring, Csize_t, Ptr{Cvoid}), vol, data_type, path, name, length, values)
end

function miadd_history_attr(vol, length, values)
    ccall((:miadd_history_attr, libminc2), Cint, (mihandle_t, Csize_t, Ptr{Cvoid}), vol, length, values)
end

function mifree_name(name_ptr)
    ccall((:mifree_name, libminc2), Cint, (Cstring,), name_ptr)
end

function mifree_names(name_pptr)
    ccall((:mifree_names, libminc2), Cint, (Ptr{Cstring},), name_pptr)
end

function miget_data_class(vol, volume_class)
    ccall((:miget_data_class, libminc2), Cint, (mihandle_t, Ptr{miclass_t}), vol, volume_class)
end

function miget_data_type(vol, volume_data_type)
    ccall((:miget_data_type, libminc2), Cint, (mihandle_t, Ptr{mitype_t}), vol, volume_data_type)
end

function miget_data_type_size(vol, voxel_size)
    ccall((:miget_data_type_size, libminc2), Cint, (mihandle_t, Ptr{misize_t}), vol, voxel_size)
end

function miget_space_name(vol, name)
    ccall((:miget_space_name, libminc2), Cint, (mihandle_t, Ptr{Cstring}), vol, name)
end

function miset_space_name(vol, name)
    ccall((:miset_space_name, libminc2), Cint, (mihandle_t, Cstring), vol, name)
end

function miget_volume_from_dimension(dimension, volume)
    ccall((:miget_volume_from_dimension, libminc2), Cint, (midimhandle_t, Ptr{mihandle_t}), dimension, volume)
end

function micopy_dimension(dim_ptr, new_dim_ptr)
    ccall((:micopy_dimension, libminc2), Cint, (midimhandle_t, Ptr{midimhandle_t}), dim_ptr, new_dim_ptr)
end

function micreate_dimension(name, dimclass, attr, length, new_dim_ptr)
    ccall((:micreate_dimension, libminc2), Cint, (Cstring, midimclass_t, midimattr_t, misize_t, Ptr{midimhandle_t}), name, dimclass, attr, length, new_dim_ptr)
end

function mifree_dimension_handle(dim_ptr)
    ccall((:mifree_dimension_handle, libminc2), Cint, (midimhandle_t,), dim_ptr)
end

function miget_volume_dimensions(volume, dimclass, attr, order, array_length, dimensions)
    ccall((:miget_volume_dimensions, libminc2), Cint, (mihandle_t, midimclass_t, midimattr_t, miorder_t, Cint, Ptr{midimhandle_t}), volume, dimclass, attr, order, array_length, dimensions)
end

function miset_apparent_dimension_order(volume, array_length, dimensions)
    ccall((:miset_apparent_dimension_order, libminc2), Cint, (mihandle_t, Cint, Ptr{midimhandle_t}), volume, array_length, dimensions)
end

function miset_apparent_dimension_order_by_name(volume, array_length, names)
    ccall((:miset_apparent_dimension_order_by_name, libminc2), Cint, (mihandle_t, Cint, Ptr{Cstring}), volume, array_length, names)
end

function miset_apparent_record_dimension_flag(volume, record_flag)
    ccall((:miset_apparent_record_dimension_flag, libminc2), Cint, (mihandle_t, Cint), volume, record_flag)
end

function miget_dimension_apparent_voxel_order(dimension, file_order, sign)
    ccall((:miget_dimension_apparent_voxel_order, libminc2), Cint, (midimhandle_t, Ptr{miflipping_t}, Ptr{miflipping_t}), dimension, file_order, sign)
end

function miset_dimension_apparent_voxel_order(dimension, flipping_order)
    ccall((:miset_dimension_apparent_voxel_order, libminc2), Cint, (midimhandle_t, miflipping_t), dimension, flipping_order)
end

function miget_dimension_class(dimension, dimclass)
    ccall((:miget_dimension_class, libminc2), Cint, (midimhandle_t, Ptr{midimclass_t}), dimension, dimclass)
end

function miset_dimension_class(dimension, dimclass)
    ccall((:miset_dimension_class, libminc2), Cint, (midimhandle_t, midimclass_t), dimension, dimclass)
end

function miget_dimension_cosines(dimension, direction_cosines)
    ccall((:miget_dimension_cosines, libminc2), Cint, (midimhandle_t, Ptr{Cdouble}), dimension, direction_cosines)
end

function miset_dimension_cosines(dimension, direction_cosines)
    ccall((:miset_dimension_cosines, libminc2), Cint, (midimhandle_t, Ptr{Cdouble}), dimension, direction_cosines)
end

function miset_dimension_description(dimension, comments)
    ccall((:miset_dimension_description, libminc2), Cint, (midimhandle_t, Cstring), dimension, comments)
end

function miget_dimension_description(dimension, comments_ptr)
    ccall((:miget_dimension_description, libminc2), Cint, (midimhandle_t, Ptr{Cstring}), dimension, comments_ptr)
end

function miget_dimension_name(dimension, name_ptr)
    ccall((:miget_dimension_name, libminc2), Cint, (midimhandle_t, Ptr{Cstring}), dimension, name_ptr)
end

function miset_dimension_name(dimension, name)
    ccall((:miset_dimension_name, libminc2), Cint, (midimhandle_t, Cstring), dimension, name)
end

function miget_dimension_offsets(dimension, array_length, start_position, offsets)
    ccall((:miget_dimension_offsets, libminc2), Cint, (midimhandle_t, misize_t, misize_t, Ptr{Cdouble}), dimension, array_length, start_position, offsets)
end

function miset_dimension_offsets(dimension, array_length, start_position, offsets)
    ccall((:miset_dimension_offsets, libminc2), Cint, (midimhandle_t, misize_t, misize_t, Ptr{Cdouble}), dimension, array_length, start_position, offsets)
end

function miget_dimension_sampling_flag(dimension, sampling_flag)
    ccall((:miget_dimension_sampling_flag, libminc2), Cint, (midimhandle_t, Ptr{miboolean_t}), dimension, sampling_flag)
end

function miset_dimension_sampling_flag(dimension, sampling_flag)
    ccall((:miset_dimension_sampling_flag, libminc2), Cint, (midimhandle_t, miboolean_t), dimension, sampling_flag)
end

function miget_dimension_separation(dimension, voxel_order, separation_ptr)
    ccall((:miget_dimension_separation, libminc2), Cint, (midimhandle_t, mivoxel_order_t, Ptr{Cdouble}), dimension, voxel_order, separation_ptr)
end

function miset_dimension_separation(dimension, separation)
    ccall((:miset_dimension_separation, libminc2), Cint, (midimhandle_t, Cdouble), dimension, separation)
end

function miget_dimension_separations(dimensions, voxel_order, array_length, separations)
    ccall((:miget_dimension_separations, libminc2), Cint, (Ptr{midimhandle_t}, mivoxel_order_t, misize_t, Ptr{Cdouble}), dimensions, voxel_order, array_length, separations)
end

function miset_dimension_separations(dimensions, array_length, separations)
    ccall((:miset_dimension_separations, libminc2), Cint, (Ptr{midimhandle_t}, misize_t, Ptr{Cdouble}), dimensions, array_length, separations)
end

function miget_dimension_size(dimension, size_ptr)
    ccall((:miget_dimension_size, libminc2), Cint, (midimhandle_t, Ptr{misize_t}), dimension, size_ptr)
end

function miset_dimension_size(dimension, size)
    ccall((:miset_dimension_size, libminc2), Cint, (midimhandle_t, misize_t), dimension, size)
end

function miget_dimension_sizes(dimensions, array_length, sizes)
    ccall((:miget_dimension_sizes, libminc2), Cint, (Ptr{midimhandle_t}, misize_t, Ptr{misize_t}), dimensions, array_length, sizes)
end

function miget_dimension_start(dimension, voxel_order, start_ptr)
    ccall((:miget_dimension_start, libminc2), Cint, (midimhandle_t, mivoxel_order_t, Ptr{Cdouble}), dimension, voxel_order, start_ptr)
end

function miset_dimension_start(dimension, start_ptr)
    ccall((:miset_dimension_start, libminc2), Cint, (midimhandle_t, Cdouble), dimension, start_ptr)
end

function miget_dimension_starts(dimensions, voxel_order, array_length, starts)
    ccall((:miget_dimension_starts, libminc2), Cint, (Ptr{midimhandle_t}, mivoxel_order_t, misize_t, Ptr{Cdouble}), dimensions, voxel_order, array_length, starts)
end

function miset_dimension_starts(dimensions, array_length, starts)
    ccall((:miset_dimension_starts, libminc2), Cint, (Ptr{midimhandle_t}, misize_t, Ptr{Cdouble}), dimensions, array_length, starts)
end

function miget_dimension_units(dimension, units_ptr)
    ccall((:miget_dimension_units, libminc2), Cint, (midimhandle_t, Ptr{Cstring}), dimension, units_ptr)
end

function miset_dimension_units(dimension, units)
    ccall((:miset_dimension_units, libminc2), Cint, (midimhandle_t, Cstring), dimension, units)
end

function miget_dimension_width(dimension, width_ptr)
    ccall((:miget_dimension_width, libminc2), Cint, (midimhandle_t, Ptr{Cdouble}), dimension, width_ptr)
end

function miset_dimension_width(dimension, width_ptr)
    ccall((:miset_dimension_width, libminc2), Cint, (midimhandle_t, Cdouble), dimension, width_ptr)
end

function miget_dimension_widths(dimension, voxel_order, array_length, start_position, widths)
    ccall((:miget_dimension_widths, libminc2), Cint, (midimhandle_t, mivoxel_order_t, misize_t, misize_t, Ptr{Cdouble}), dimension, voxel_order, array_length, start_position, widths)
end

function miset_dimension_widths(dimension, array_length, start_position, widths)
    ccall((:miset_dimension_widths, libminc2), Cint, (midimhandle_t, misize_t, misize_t, Ptr{Cdouble}), dimension, array_length, start_position, widths)
end

function micreate_volume(filename, number_of_dimensions, dimensions, volume_type, volume_class, create_props, volume)
    ccall((:micreate_volume, libminc2), Cint, (Cstring, Cint, Ptr{midimhandle_t}, mitype_t, miclass_t, mivolumeprops_t, Ptr{mihandle_t}), filename, number_of_dimensions, dimensions, volume_type, volume_class, create_props, volume)
end

function micreate_volume_image(volume)
    ccall((:micreate_volume_image, libminc2), Cint, (mihandle_t,), volume)
end

function miget_volume_dimension_count(volume, dimclass, attr, number_of_dimensions)
    ccall((:miget_volume_dimension_count, libminc2), Cint, (mihandle_t, midimclass_t, midimattr_t, Ptr{Cint}), volume, dimclass, attr, number_of_dimensions)
end

function miget_slice_dimension_count(volume, dimclass, attr, number_of_dimensions)
    ccall((:miget_slice_dimension_count, libminc2), Cint, (mihandle_t, midimclass_t, midimattr_t, Ptr{Cint}), volume, dimclass, attr, number_of_dimensions)
end

function miget_volume_voxel_count(volume, number_of_voxels)
    ccall((:miget_volume_voxel_count, libminc2), Cint, (mihandle_t, Ptr{misize_t}), volume, number_of_voxels)
end

function miopen_volume(filename, mode, volume)
    ccall((:miopen_volume, libminc2), Cint, (Cstring, Cint, Ptr{mihandle_t}), filename, mode, volume)
end

function miclose_volume(volume)
    ccall((:miclose_volume, libminc2), Cint, (mihandle_t,), volume)
end

function miget_slice_scaling_flag(volume, slice_scaling_flag)
    ccall((:miget_slice_scaling_flag, libminc2), Cint, (mihandle_t, Ptr{miboolean_t}), volume, slice_scaling_flag)
end

function miset_slice_scaling_flag(volume, slice_scaling_flag)
    ccall((:miset_slice_scaling_flag, libminc2), Cint, (mihandle_t, miboolean_t), volume, slice_scaling_flag)
end

function minew_volume_props(props)
    ccall((:minew_volume_props, libminc2), Cint, (Ptr{mivolumeprops_t},), props)
end

function mifree_volume_props(props)
    ccall((:mifree_volume_props, libminc2), Cint, (mivolumeprops_t,), props)
end

function miget_volume_props(vol, props)
    ccall((:miget_volume_props, libminc2), Cint, (mihandle_t, Ptr{mivolumeprops_t}), vol, props)
end

function miset_props_multi_resolution(props, enable_flag, depth)
    ccall((:miset_props_multi_resolution, libminc2), Cint, (mivolumeprops_t, miboolean_t, Cint), props, enable_flag, depth)
end

function miget_props_multi_resolution(props, enable_flag, depth)
    ccall((:miget_props_multi_resolution, libminc2), Cint, (mivolumeprops_t, Ptr{miboolean_t}, Ptr{Cint}), props, enable_flag, depth)
end

function miselect_resolution(volume, depth)
    ccall((:miselect_resolution, libminc2), Cint, (mihandle_t, Cint), volume, depth)
end

function miflush_from_resolution(volume, depth)
    ccall((:miflush_from_resolution, libminc2), Cint, (mihandle_t, Cint), volume, depth)
end

function miset_props_compression_type(props, compression_type)
    ccall((:miset_props_compression_type, libminc2), Cint, (mivolumeprops_t, micompression_t), props, compression_type)
end

function miget_props_compression_type(props, compression_type)
    ccall((:miget_props_compression_type, libminc2), Cint, (mivolumeprops_t, Ptr{micompression_t}), props, compression_type)
end

function miset_props_zlib_compression(props, zlib_level)
    ccall((:miset_props_zlib_compression, libminc2), Cint, (mivolumeprops_t, Cint), props, zlib_level)
end

function miget_props_zlib_compression(props, zlib_level)
    ccall((:miget_props_zlib_compression, libminc2), Cint, (mivolumeprops_t, Ptr{Cint}), props, zlib_level)
end

function miset_props_blocking(props, edge_count, edge_lengths)
    ccall((:miset_props_blocking, libminc2), Cint, (mivolumeprops_t, Cint, Ptr{Cint}), props, edge_count, edge_lengths)
end

function miget_props_blocking(props, edge_count, edge_lengths, max_lengths)
    ccall((:miget_props_blocking, libminc2), Cint, (mivolumeprops_t, Ptr{Cint}, Ptr{Cint}, Cint), props, edge_count, edge_lengths, max_lengths)
end

function miset_props_checksum(props, on)
    ccall((:miset_props_checksum, libminc2), Cint, (mivolumeprops_t, Cint), props, on)
end

function miget_props_checksum(props, on)
    ccall((:miget_props_checksum, libminc2), Cint, (mivolumeprops_t, Ptr{Cint}), props, on)
end

function miset_props_record(props, record_length, record_name)
    ccall((:miset_props_record, libminc2), Cint, (mivolumeprops_t, misize_t, Cstring), props, record_length, record_name)
end

function miset_props_template(props, template_flag)
    ccall((:miset_props_template, libminc2), Cint, (mivolumeprops_t, Cint), props, template_flag)
end

function miget_slice_max(volume, start_positions, array_length, slice_max)
    ccall((:miget_slice_max, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Csize_t, Ptr{Cdouble}), volume, start_positions, array_length, slice_max)
end

function miset_slice_max(volume, start_positions, array_length, slice_max)
    ccall((:miset_slice_max, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Csize_t, Cdouble), volume, start_positions, array_length, slice_max)
end

function miget_slice_min(volume, start_positions, array_length, slice_min)
    ccall((:miget_slice_min, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Csize_t, Ptr{Cdouble}), volume, start_positions, array_length, slice_min)
end

function miset_slice_min(volume, start_positions, array_length, slice_min)
    ccall((:miset_slice_min, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Csize_t, Cdouble), volume, start_positions, array_length, slice_min)
end

function miget_slice_range(volume, start_positions, array_length, slice_max, slice_min)
    ccall((:miget_slice_range, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Csize_t, Ptr{Cdouble}, Ptr{Cdouble}), volume, start_positions, array_length, slice_max, slice_min)
end

function miset_slice_range(volume, start_positions, array_length, slice_max, slice_min)
    ccall((:miset_slice_range, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Csize_t, Cdouble, Cdouble), volume, start_positions, array_length, slice_max, slice_min)
end

function miget_volume_max(volume, slice_max)
    ccall((:miget_volume_max, libminc2), Cint, (mihandle_t, Ptr{Cdouble}), volume, slice_max)
end

function miset_volume_max(volume, slice_max)
    ccall((:miset_volume_max, libminc2), Cint, (mihandle_t, Cdouble), volume, slice_max)
end

function miget_volume_min(volume, slice_min)
    ccall((:miget_volume_min, libminc2), Cint, (mihandle_t, Ptr{Cdouble}), volume, slice_min)
end

function miset_volume_min(volume, slice_min)
    ccall((:miset_volume_min, libminc2), Cint, (mihandle_t, Cdouble), volume, slice_min)
end

function miget_volume_range(volume, volume_max, volume_min)
    ccall((:miget_volume_range, libminc2), Cint, (mihandle_t, Ptr{Cdouble}, Ptr{Cdouble}), volume, volume_max, volume_min)
end

function miset_volume_range(volume, volume_max, volume_min)
    ccall((:miset_volume_range, libminc2), Cint, (mihandle_t, Cdouble, Cdouble), volume, volume_max, volume_min)
end

function miget_hyperslab_size(volume_data_type, n_dimensions, count, size_ptr)
    ccall((:miget_hyperslab_size, libminc2), Cint, (mitype_t, Cint, Ptr{hsize_t}, Ptr{misize_t}), volume_data_type, n_dimensions, count, size_ptr)
end

function miget_hyperslab_size_hdf(hdf_type_id, n_dimensions, count, size_ptr)
    ccall((:miget_hyperslab_size_hdf, libminc2), Cvoid, (hid_t, Cint, Ptr{hsize_t}, Ptr{misize_t}), hdf_type_id, n_dimensions, count, size_ptr)
end

function miget_hyperslab_normalized(volume, buffer_data_type, start, count, min, max, buffer)
    ccall((:miget_hyperslab_normalized, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Cdouble, Cdouble, Ptr{Cvoid}), volume, buffer_data_type, start, count, min, max, buffer)
end

function miset_hyperslab_normalized(volume, buffer_data_type, start, count, min, max, buffer)
    ccall((:miset_hyperslab_normalized, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Cdouble, Cdouble, Ptr{Cvoid}), volume, buffer_data_type, start, count, min, max, buffer)
end

function miget_hyperslab_with_icv(volume, buffer_data_type, start, count, buffer)
    ccall((:miget_hyperslab_with_icv, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Ptr{Cvoid}), volume, buffer_data_type, start, count, buffer)
end

function miset_hyperslab_with_icv(volume, buffer_data_type, start, count, buffer)
    ccall((:miset_hyperslab_with_icv, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Ptr{Cvoid}), volume, buffer_data_type, start, count, buffer)
end

function miget_real_value_hyperslab(volume, buffer_data_type, start, count, buffer)
    ccall((:miget_real_value_hyperslab, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Ptr{Cvoid}), volume, buffer_data_type, start, count, buffer)
end

function miset_real_value_hyperslab(volume, buffer_data_type, start, count, buffer)
    ccall((:miset_real_value_hyperslab, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Ptr{Cvoid}), volume, buffer_data_type, start, count, buffer)
end

function miget_voxel_value_hyperslab(volume, buffer_data_type, start, count, buffer)
    ccall((:miget_voxel_value_hyperslab, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Ptr{Cvoid}), volume, buffer_data_type, start, count, buffer)
end

function miset_voxel_value_hyperslab(volume, buffer_data_type, start, count, buffer)
    ccall((:miset_voxel_value_hyperslab, libminc2), Cint, (mihandle_t, mitype_t, Ptr{misize_t}, Ptr{misize_t}, Ptr{Cvoid}), volume, buffer_data_type, start, count, buffer)
end

function miconvert_real_to_voxel(volume, coords, ncoords, real_value, voxel_value_ptr)
    ccall((:miconvert_real_to_voxel, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Csize_t, Cdouble, Ptr{Cdouble}), volume, coords, ncoords, real_value, voxel_value_ptr)
end

function miconvert_voxel_to_real(volume, coords, ncoords, voxel_value, real_value_ptr)
    ccall((:miconvert_voxel_to_real, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Cint, Cdouble, Ptr{Cdouble}), volume, coords, ncoords, voxel_value, real_value_ptr)
end

function miconvert_voxel_to_world(volume, voxel, world)
    ccall((:miconvert_voxel_to_world, libminc2), Cint, (mihandle_t, Ptr{Cdouble}, Ptr{Cdouble}), volume, voxel, world)
end

function miconvert_world_to_voxel(volume, world, voxel)
    ccall((:miconvert_world_to_voxel, libminc2), Cint, (mihandle_t, Ptr{Cdouble}, Ptr{Cdouble}), volume, world, voxel)
end

function miconvert_world_origin_to_start(volume, world, starts)
    ccall((:miconvert_world_origin_to_start, libminc2), Cint, (mihandle_t, Ptr{Cdouble}, Ptr{Cdouble}), volume, world, starts)
end

function miconvert_spatial_frequency_origin_to_start(volume, world, starts)
    ccall((:miconvert_spatial_frequency_origin_to_start, libminc2), Cint, (mihandle_t, Ptr{Cdouble}, Ptr{Cdouble}), volume, world, starts)
end

function miset_spatial_frequency_origin(volume, world)
    ccall((:miset_spatial_frequency_origin, libminc2), Cint, (mihandle_t, Ptr{Cdouble}), volume, world)
end

function miget_real_value(volume, coords, ndims, value_ptr)
    ccall((:miget_real_value, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Cint, Ptr{Cdouble}), volume, coords, ndims, value_ptr)
end

function miset_real_value(volume, coords, ndims, value)
    ccall((:miset_real_value, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Cint, Cdouble), volume, coords, ndims, value)
end

function miget_voxel_value(volume, coords, ndims, voxel_ptr)
    ccall((:miget_voxel_value, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Cint, Ptr{Cdouble}), volume, coords, ndims, voxel_ptr)
end

function miset_voxel_value(volume, coords, ndims, voxel)
    ccall((:miset_voxel_value, libminc2), Cint, (mihandle_t, Ptr{misize_t}, Cint, Cdouble), volume, coords, ndims, voxel)
end

function miget_volume_real_range(volume, real_range)
    ccall((:miget_volume_real_range, libminc2), Cint, (mihandle_t, Ptr{Cdouble}), volume, real_range)
end

function miset_world_origin(volume, origin)
    ccall((:miset_world_origin, libminc2), Cint, (mihandle_t, Ptr{Cdouble}), volume, origin)
end

function miget_volume_valid_max(volume, valid_max)
    ccall((:miget_volume_valid_max, libminc2), Cint, (mihandle_t, Ptr{Cdouble}), volume, valid_max)
end

function miset_volume_valid_max(volume, valid_max)
    ccall((:miset_volume_valid_max, libminc2), Cint, (mihandle_t, Cdouble), volume, valid_max)
end

function miget_volume_valid_min(volume, valid_min)
    ccall((:miget_volume_valid_min, libminc2), Cint, (mihandle_t, Ptr{Cdouble}), volume, valid_min)
end

function miset_volume_valid_min(volume, valid_min)
    ccall((:miset_volume_valid_min, libminc2), Cint, (mihandle_t, Cdouble), volume, valid_min)
end

function miget_volume_valid_range(volume, valid_max, valid_min)
    ccall((:miget_volume_valid_range, libminc2), Cint, (mihandle_t, Ptr{Cdouble}, Ptr{Cdouble}), volume, valid_max, valid_min)
end

function miset_volume_valid_range(volume, valid_max, valid_min)
    ccall((:miset_volume_valid_range, libminc2), Cint, (mihandle_t, Cdouble, Cdouble), volume, valid_max, valid_min)
end

function miget_record_name(volume, name)
    ccall((:miget_record_name, libminc2), Cint, (mihandle_t, Ptr{Cstring}), volume, name)
end

function miget_record_length(volume, length)
    ccall((:miget_record_length, libminc2), Cint, (mihandle_t, Ptr{Cint}), volume, length)
end

function miget_record_field_name(volume, index, name)
    ccall((:miget_record_field_name, libminc2), Cint, (mihandle_t, Cint, Ptr{Cstring}), volume, index, name)
end

function miset_record_field_name(volume, index, name)
    ccall((:miset_record_field_name, libminc2), Cint, (mihandle_t, Cint, Cstring), volume, index, name)
end

function midefine_label(volume, value, name)
    ccall((:midefine_label, libminc2), Cint, (mihandle_t, Cint, Cstring), volume, value, name)
end

function miget_label_name(volume, value, name)
    ccall((:miget_label_name, libminc2), Cint, (mihandle_t, Cint, Ptr{Cstring}), volume, value, name)
end

function miget_label_value(volume, name, value)
    ccall((:miget_label_value, libminc2), Cint, (mihandle_t, Cstring, Ptr{Cint}), volume, name, value)
end

function miget_number_of_defined_labels(volume, number_of_labels)
    ccall((:miget_number_of_defined_labels, libminc2), Cint, (mihandle_t, Ptr{Cint}), volume, number_of_labels)
end

function miget_label_value_by_index(volume, idx, value)
    ccall((:miget_label_value_by_index, libminc2), Cint, (mihandle_t, Cint, Ptr{Cint}), volume, idx, value)
end
