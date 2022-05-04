/// @description render
if (!hovered){
	nineSliceScript(spr_nineSlice2, x - button_width * 0.5, y - button_height * 0.5, x + button_width * 0.5, y + button_height * 0.5);
	
	//draw text
	draw_set_font(ft_StationName);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_color($1A1716);
	draw_text_transformed(x, y + 0.5, text, text_scale, text_scale, 0);
	draw_text_transformed(x + 0.5, y + 0.5, text, text_scale, text_scale, 0);
															  
	draw_set_color(c_white);								  
	draw_text_transformed(x, y, text,  text_scale, text_scale, 0);

}
else{
	nineSliceScript(spr_nineSlice2, x - button_width * 0.6, y - button_height * 0.6, x + button_width * 0.6, y + button_height * 0.6);

	//draw text
	draw_set_font(ft_StationName);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_set_color($1A1716);
	draw_text_transformed(x, y + 0.5, text, text_scale * 1.4, text_scale * 1.4, 0);
	draw_text_transformed(x + 0.5, y + 0.5, text, text_scale * 1.4, text_scale * 1.4, 0);
															  
	draw_set_color(c_white);								  
	draw_text_transformed(x, y, text,  text_scale * 1.4, text_scale * 1.4, 0);

}