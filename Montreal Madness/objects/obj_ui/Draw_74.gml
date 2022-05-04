/// @description draw UI
var wr = display_get_gui_width() * 0.0078125;
var hr = display_get_gui_height() * 0.0078125;

draw_sprite_ext(spr_painting, 0, 116 * wr, 12 * hr, wr * painting_scale, hr * painting_scale, 0, c_white, 1);

draw_sprite_ext(spr_hearts_ui, 0, 12 * wr, 12 * hr, wr, hr, 0, c_white, 1);

var text = string(hearts_obtained);
draw_set_font(ft_StationName);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
	
draw_set_color($1A1716);
draw_text_transformed((text_x + 0.2) *  wr, (text_y + shadow_offset * 0.5) *  hr, text, text_scale, text_scale, 0);
draw_text_transformed((text_x + shadow_offset ) *  wr, (text_y + shadow_offset * 0.5) *  hr, text, text_scale, text_scale, 0);
	
draw_set_color(c_white);
draw_text_transformed(text_x *  wr, text_y *  hr, text,  text_scale, text_scale, 0);