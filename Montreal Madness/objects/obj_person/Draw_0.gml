/// @description shadow stuff

if (!picked_up) draw_self();
else{
	draw_sprite_ext(spr_person_shadow, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x, y - 1, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}