/// @description draw frame for characters
nineSliceScript(spr_station_nineSlice, x, y, x_end_pos, y_end_pos);

for(var i = 0; i < person_max; ++i){
	if (character_slots[i] == noone){
		draw_sprite(spr_characters, max_char_index, x + 4 + (p_width + 1) * i, y + 4);
	}
}