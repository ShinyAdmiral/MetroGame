/// @description Text
if (hovered && global.hovered_ocupied == noone){
	draw_set_font(ft_StationName);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	draw_set_color($1A1716);
	for (var i = -1; i < 2; ++i)
		for (var k = -1; k < 2; ++k)
			if (i != 0 || k != 0)
				draw_text_transformed(x + text_offset * i, y + text_offset * k, station_name, scale, scale, -45);
	
	draw_set_color(c_white);
	draw_text_transformed(x, y, station_name, scale, scale, -45);
}