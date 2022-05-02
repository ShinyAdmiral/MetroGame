/// @description clean up memory
ds_list_destroy(station_list);
ds_map_destroy(dialogue_map);
if (surface_exists(nine_slice_surface)) surface_free(nine_slice_surface);