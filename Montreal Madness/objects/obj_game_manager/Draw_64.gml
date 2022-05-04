/// @description show people goals

//draw desires
if (!surface_exists(nine_slice_surface)) nine_slice_surface = surface_create(128, 128);

var _g_width = display_get_gui_width();
var _g_height = display_get_gui_height();
	
surface_set_target(nine_slice_surface)
	draw_clear_alpha(c_black, 0);
	nineSliceScript(spr_nineSlice, 0, 0, 128, 39);
	draw_sprite(spr_characterPortraits_shadow, 0, 11, 10);
	draw_sprite(spr_characterPortraits, portrait_num, 10, 9);
surface_reset_target();

draw_surface_stretched(nine_slice_surface, 0, current_postion_y * _g_height * 0.0078125, _g_width, _g_height);
	
_g_width *= 0.0078125;
_g_height *= 0.0078125;
	
draw_set_font(ft_Dialogue);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
	
draw_set_color($1A1716);
draw_text_ext_transformed((text_x) *  _g_width, (current_postion_y + text_y + shadow_offset ) * _g_height, text, text_sep * _g_height, text_width * _g_height, text_scale, text_scale, 0);
draw_text_ext_transformed((text_x + shadow_offset ) *  _g_width, (current_postion_y + text_y + shadow_offset ) * _g_height, text, text_sep * _g_height, text_width * _g_height, text_scale, text_scale, 0);
	
draw_set_color(c_white);
draw_text_ext_transformed(text_x *  _g_width, (current_postion_y + text_y) * _g_height, text, text_sep * _g_height, text_width * _g_height, text_scale, text_scale, 0);
