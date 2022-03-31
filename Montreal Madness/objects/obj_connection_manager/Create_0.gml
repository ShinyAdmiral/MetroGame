/// @description Insert description here
metro_line_connections = ds_map_create();

metro_line_connections[?"green"] = ds_list_create();
metro_line_connections[?"blue"] = ds_list_create();
metro_line_connections[?"orange"] = ds_list_create();
metro_line_connections[?"yellow"] = ds_list_create();

//set up lines
with(obj_major_station){
	if (!start_station) continue;
	
	//what is our desired color
	var search_object = noone;
	switch(start_line_color){
		case "green":	search_object = obj_colored_station_green;
		case "blue":	search_object = obj_colored_station_blue;
		case "orange":	search_object = obj_colored_station_orange;
		case "yellow":	search_object = obj_colored_station_yellow; 
	}
	
	searchForNode(other.metro_line_connections[?start_line_color], search_object, id);
}