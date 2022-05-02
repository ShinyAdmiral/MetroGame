/// @description show people goals

if (!surface_exists(nine_slice_surface)) nine_slice_surface = surface_create(128, 128);

surface_set_target(nine_slice_surface)
	draw_clear_alpha(c_black, 0);
	nineSliceScript(spr_nineSlice, 0, 0, 128, 40);
surface_reset_target();

draw_surface_stretched(nine_slice_surface, 0, 0, display_get_gui_width(), display_get_gui_height());