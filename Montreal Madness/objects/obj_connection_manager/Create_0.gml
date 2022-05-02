/// @description Insert description here
metro_line_connections = ds_map_create();

metro_line_connections[?"green"] = ds_list_create();
metro_line_connections[?"blue"] = ds_list_create();
metro_line_connections[?"orange"] = ds_list_create();
metro_line_connections[?"yellow"] = ds_list_create();

global.hovered_ocupied = noone;