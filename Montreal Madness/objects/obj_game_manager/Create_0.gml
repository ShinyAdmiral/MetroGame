/// @description set up things
randomize();

//grab list of stations
station_list = ds_list_create();
with(obj_station_container) ds_list_add(other.station_list, id);

dialogue_map = ds_map_create();
scr_assign_dialogue();

global.person_picked_up = false;
global.person_hovered = noone;
global.current_person_station = "";
nine_slice_surface = noone;

top_position_y = 0;
bottom_position_y = 89;
current_postion_y = -39
current_amount = 0;
top = false;
started = false;

ui_time = 0;
text = "";
portrait_num = 0;

music = noone;
music_index = 0;
play_huh_sound = true;

function set_sation(station){
	var _id;
	var _list = ds_list_create();
	
	with(obj_major_station){
		if (name == station) _id = id;
		if (is_start && ds_list_find_index(_list, s_color) == -1) ds_list_add(_list, s_color);
	}
	
	var _find = ds_list_find_index(_list, _id.s_color);
	ds_list_delete(_list, _find);
	
	var _length = ds_list_size(_list) - 1;
	var _random_line = irandom_range(0, _length);
	
	var metros = obj_connection_manager.metro_line_connections[?_list[|_random_line]];
	
	_length = ds_list_size(metros) - 1;
	var _random_stop = irandom_range(0, _length);
	var desired = metros[|_random_stop].name;
	
	//do not get on our metro
	while(station == desired){
		_random_stop = irandom_range(0, _length);
		desired = metros[|_random_stop].name;
	}
	
	ds_list_destroy(_list);
	return desired;
}

function spawn_character(){
	//get random station
	var _length = ds_list_size(station_list) - 1;
	var _ran_index = irandom_range(0, _length);
	var _index_num = array_length(station_list[|_ran_index].character_slots);
	
	//keep track if we found
	var _found = false;
	
	while (!_found){
		//get next available spot
		for (var k = 0; k < _index_num; ++k){
			if (station_list[|_ran_index].character_slots[k].occupied_by == noone){
				var _inst = instance_create_layer(station_list[|_ran_index].character_slots[k].x, 
												  station_list[|_ran_index].character_slots[k].y,
												  "Person", obj_person);
			
				_inst.current_occupide_node = station_list[|_ran_index].character_slots[k];
				_inst.move_back_start_x = station_list[|_ran_index].character_slots[k].x;
				_inst.move_back_start_y = station_list[|_ran_index].character_slots[k].y;
				
				_inst.desired_station = set_sation(station_list[|_ran_index].character_slots[k].current_station);
			
				station_list[|_ran_index].character_slots[k].occupied_by = _inst;
				_found = true;
				break;
			}
			
		}
		
		_ran_index++;
		if (_ran_index >= _length) _ran_index = 0;
		_index_num = array_length(station_list[|_ran_index].character_slots);
	}
}