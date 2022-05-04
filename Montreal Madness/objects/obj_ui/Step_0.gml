/// @description Input Stuff
local_x = mouse_x - obj_camera.x + obj_camera.view_width * 0.5;
local_y = mouse_y - obj_camera.y + obj_camera.view_height * 0.5;

//show_debug_message("( " + string(local_x) + ", " + string(local_y) + " )");


if (local_x > 108 && local_x < 124 && local_y > 4 && local_y < 20){
	painting_scale = 1.25;
	if (mouse_check_button_pressed(mb_left)) {
		audio_play_sound(sfx_ui_click, 10, false);
		room_goto(rm_gallery);
	}
}
else
	painting_scale = 1;