/// @description Draw station surface

if (global.person_picked_up && global.current_person_station != station_hosting.name){
	if (!hover)
		nineSliceScript(spr_unhovered_station_nineSlice_wrong, x, y, x_end_pos, y_end_pos);
	
	else{
		nineSliceScript(spr_station_nineSlice_wrong, x, y, x_end_pos, y_end_pos);
	}
	
	exit;
}

if (!hover)
	nineSliceScript(spr_unhovered_station_nineSlice, x, y, x_end_pos, y_end_pos);
	
else{
	nineSliceScript(spr_station_nineSlice, x, y, x_end_pos, y_end_pos);

	//display text above
	draw_set_font(ft_StationName);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_color($1A1716);
	for (var i = -1; i < 2; ++i)
		for (var k = -1; k < 2; ++k)
			if (i != 0 || k != 0)
				draw_text_transformed(text_x + text_offset * i, text_y + text_offset * k, station_hosting.station_name, scale, scale, 0);
	
	draw_set_color(c_white);
	draw_text_transformed(text_x, text_y, station_hosting.station_name, scale, scale, 0);
}