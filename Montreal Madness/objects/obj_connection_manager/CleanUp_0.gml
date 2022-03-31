/// @description clean up memory

ds_list_destroy(metro_line_connections[?"green"]);
ds_list_destroy(metro_line_connections[?"blue"]);
ds_list_destroy(metro_line_connections[?"orange"]);
ds_list_destroy(metro_line_connections[?"yellow"]);

ds_map_destroy(metro_line_connections);