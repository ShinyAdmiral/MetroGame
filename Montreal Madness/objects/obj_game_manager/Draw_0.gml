/// @description move ui
if (global.person_hovered != noone){
	//move ui
	if (global.person_hovered.y - obj_camera.y > 0){
		current_postion_y = lerp(-39, top_position_y, ui_time);
		top = false;
	}
	else{
		current_postion_y = lerp(167, bottom_position_y, ui_time);
		top = true;
	}
	
	//get portait
	portrait_num = global.person_hovered.image_index;
	
	//get text
	var _station = global.person_hovered.desired_station;
	var _text = "";
	
	if (!is_undefined(ds_map_find_value(dialogue_map, _station)))
		_text = dialogue_map[?_station];
	else																							 					   
		_text = "Take me to " + _station + "!";
	
	text = _text;
	
	//update time
	ui_time += ui_speed;
	ui_time = min(ui_time, 1);
}
else{
	//move ui
	if (!top){
		current_postion_y = lerp(-39, top_position_y, ui_time);
	}
	else{
		current_postion_y = lerp(167, bottom_position_y, ui_time);
	}
	
	ui_time -= ui_speed;
	ui_time = max(ui_time, 0);
}