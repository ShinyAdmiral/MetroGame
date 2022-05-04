/// @description Insert description here
	
//draw text
draw_set_font(ft_StationName);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _y_off = 0;

draw_set_color($1A1716);
draw_text_ext_transformed(room_width * 0.5, room_height * 0.5  + 0.5 + _y_off, text, sep, width, text_scale, text_scale, 0);
draw_text_ext_transformed(room_width * 0.5 + 0.5, room_height * 0.5 + 0.5 + _y_off, text,  sep, width, text_scale, text_scale, 0);
															  
draw_set_color(c_white);								  
draw_text_ext_transformed(room_width * 0.5, room_height * 0.5 + _y_off, text,  sep, width, text_scale, text_scale, 0);