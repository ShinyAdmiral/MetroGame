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
current_postion_y = bottom_position_y;
current_amount = 0;

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