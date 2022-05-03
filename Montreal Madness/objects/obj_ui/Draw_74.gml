/// @description draw UI
var wr = display_get_gui_width() * 0.0078125;
var hr = display_get_gui_height() * 0.0078125;

draw_sprite_ext(spr_painting, 0, 12 * wr, 12 * hr, wr * painting_scale, hr * painting_scale, 0, c_white, 1);