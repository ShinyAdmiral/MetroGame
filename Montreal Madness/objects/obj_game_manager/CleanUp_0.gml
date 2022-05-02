/// @description clean up memory

ds_list_destroy(station_list);
if (surface_exists(nine_slice_surface)) surface_free(nine_slice_surface);