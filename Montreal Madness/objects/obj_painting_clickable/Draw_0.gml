/// @description 
if (disabled) exit;

if (unlocked){
	if (!surface_exists(surface)) surface = surface_create(sprite_width, sprite_height);
	
	surface_set_target(surface);
		draw_clear_alpha(c_black, 0);
		draw_sprite(sprite_index, image_index, sprite_xoffset/image_xscale, sprite_yoffset/image_yscale);
		gpu_set_colorwriteenable(1, 1, 1, 0);
		draw_sprite(sprite, 0, sprite_width * 0.5 - sprite_xoffset, sprite_height * 0.5 - sprite_yoffset);
		gpu_set_colorwriteenable(1, 1, 1, 1);
	surface_reset_target();
	
	draw_surface_ext(surface, x - sprite_xoffset, y - sprite_yoffset, image_xscale, image_yscale, 0, c_white, 1);
	draw_sprite_ext(spr_paiting_mystery_outline, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
	
}	
else{
	draw_self();
}