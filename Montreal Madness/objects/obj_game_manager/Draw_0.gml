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
	
	//play sound
	if (ui_time > 0.7 && play_huh_sound && !audio_is_playing(sfx_huh1) && !audio_is_playing(sfx_huh2) && !audio_is_playing(sfx_huh3)){
		var _ran = irandom_range(0, 2);
		var _sfx;
		
		switch(_ran){
			case 0: _sfx = audio_play_sound(sfx_huh1, 10, false); break;
			case 1: _sfx = audio_play_sound(sfx_huh2, 10, false); break;	
			case 2: _sfx = audio_play_sound(sfx_huh3, 10, false); break;	
		}
		
		audio_sound_pitch(_sfx, random_range(0.9, 1.15));
		play_huh_sound = false;
	}
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
	
	if (ui_time == 0) play_huh_sound = true;
}