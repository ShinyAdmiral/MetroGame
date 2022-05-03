/// @description Input Stuff
var local_x = mouse_x - obj_camera.x + obj_camera.view_width * 0.5;
var local_y = mouse_y - obj_camera.y + obj_camera.view_height * 0.5;

show_debug_message("( " + string(local_x) + ", " + string(local_y) + " )");


if (local_x > 4 && local_x < 20 && local_y > 4 && local_y < 20){
	painting_scale = 1.25;
	if (mouse_check_button_pressed(mb_left)) room_goto(rm_gallery);
}
else
	painting_scale = 1;