/// @description Insert description here
p_width = sprite_get_width(spr_characters);
p_height = sprite_get_width(spr_characters);

//max_char_index = sprite_get_number(spr_characters) - 1;

x_end_pos = x + p_width * person_max + person_max + 7;
y_end_pos = y + p_height + 8;

//set up spaces
character_slots = array_create(person_max, noone);
for(var i = 0; i < person_max; ++i){
	character_slots[i] = instance_create_layer(x + 7 + (p_width + 1) * i, y + 7, "World_UI", obj_person_space);
	character_slots[i].visible = false;
}

station_hosting = noone;

//text set up
scale = 0.08;
text_offset = 0.5;
text_x = (x + x_end_pos) * 0.5;
text_y = y - 4;

hover = false;

function SetUp(){
	if (station_id == ""){
		var _station_hosting = noone;
		var _shortest_length = 999999;
		var _x = x;
		var _y = y;

		with(obj_major_station){
			var _dist = point_distance(_x, _y, x, y);
			if (_shortest_length > _dist){
				_shortest_length = _dist;
				_station_hosting = id;
			}
		}

		station_hosting = _station_hosting;
	}
	else{
		var _name = station_id;
		var _station_hosting = noone;
	
		with(obj_major_station)
			if (name == _name)
				_station_hosting = id;
		
		station_hosting = _station_hosting;
	}

	for(var i = 0; i < person_max; ++i)
		character_slots[i].current_station = station_hosting.name;
}