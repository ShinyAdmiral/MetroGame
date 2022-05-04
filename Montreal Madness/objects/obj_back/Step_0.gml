/// @description back button


if (hover && mouse_check_button_pressed(mb_left) && !colored){
	alarm[0] = 5;
	pressed = true;
	colored = true;
	image_xscale = 1;
	image_yscale = 1;
	audio_play_sound(sfx_ui_click, 10, false);
}
	