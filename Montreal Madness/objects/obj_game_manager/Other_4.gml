/// @description set up stating group
var _length = ds_list_size(station_list) - 1;

for(var i = 0; i < starting_amount; ++i){
	var _ran_index = irandom_range(0, _length);
	var _index_num = array_length(station_list[|_ran_index].character_slots)
	
	for (var k = 0; k < _index_num; ++k){
		if (station_list[|_ran_index].character_slots[k].occupied_by == noone){
			var _inst = instance_create_layer(station_list[|_ran_index].character_slots[k].x, 
											  station_list[|_ran_index].character_slots[k].y,
											  "Person", obj_person);
			
			_inst.current_occupide_node = station_list[|_ran_index].character_slots[k];
			_inst.move_back_start_x = station_list[|_ran_index].character_slots[k].x;
			_inst.move_back_start_y = station_list[|_ran_index].character_slots[k].y;
			
			station_list[|_ran_index].character_slots[k].occupied_by = _inst;
			break;
		}
			
	}
}