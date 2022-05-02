/// @description set up lines
with(obj_major_station){
	if (!start_station) continue;
	
	//what is our desired color
	var search_object = noone;
	switch(start_line_color){
		case "green":	search_object = obj_colored_station_green;	break;
		case "blue":	search_object = obj_colored_station_blue;	break;
		case "orange":	search_object = obj_colored_station_orange;	break;
		case "yellow":	search_object = obj_colored_station_yellow;	break;
	}
	
	SearchForNode(other.metro_line_connections[?start_line_color], search_object, id);
	checked = false;
	with(obj_major_station) checked = false;
	
	var train_object = noone;
	switch(start_line_color){
		case "green":	train_object = obj_green_train;		break;
		case "blue":	train_object = obj_blue_train;		break;
		case "orange":	train_object = obj_orange_train;	break;
		case "yellow":	train_object = obj_yellow_train;	break;
	}
	
	var _inst = instance_create_layer(	other.metro_line_connections[?start_line_color][|0].x, 
										other.metro_line_connections[?start_line_color][|0].y, 
										"Train", train_object);
										
	_inst.line = other.metro_line_connections[?start_line_color];
	_inst.Start();
	
	//exception
	if (train_object == obj_yellow_train) continue;
	
	var _size = ds_list_size(other.metro_line_connections[?start_line_color]);
	_inst = instance_create_layer(		other.metro_line_connections[?start_line_color][|_size-1].x, 
										other.metro_line_connections[?start_line_color][|_size-1].y, 
										"Train", train_object);
										
	_inst.line = other.metro_line_connections[?start_line_color];
	_inst.current_point = _size-1;
	_inst.current_direction *= -1;
	_inst.Start();
}

