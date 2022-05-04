/// @description Draw Background
nineSliceScript(spr_nineSlice, 0, 0, 128, 128);

if (displaying_portrait && displaying_sprite != noone){
	draw_sprite(displaying_sprite, 0, room_width * 0.5, room_height * 0.5);
	
	//draw text
	draw_set_font(ft_StationName);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	draw_set_color($1A1716);
	draw_text_transformed(room_width * 0.5, room_height * 0.5 + y_offset + 0.5, displaying_text, text_scale, text_scale, 0);
	draw_text_transformed(room_width * 0.5 + 0.5, room_height * 0.5 + y_offset + 0.5, displaying_text, text_scale, text_scale, 0);
															  
	draw_set_color(c_white);								  
	draw_text_transformed(room_width * 0.5, room_height * 0.5 + y_offset, displaying_text,  text_scale, text_scale, 0);
}