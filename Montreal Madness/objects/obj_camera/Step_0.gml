/// @description Update Camera

//input
if (mouse_check_button(mb_right)){
	if (move_mode = false){
		start_mouse_x = mouse_x - camera_get_view_x(camera);
		start_mouse_y = mouse_y - camera_get_view_y(camera);
		start_pos_x = x;
		start_pos_y = y;
	}
	
	x = start_pos_x - (mouse_x - camera_get_view_x(camera) - start_mouse_x);
	y = start_pos_y - (mouse_y - camera_get_view_y(camera) - start_mouse_y);
	
	move_mode = true;
	//how_debug_message("yeeee")
}
else{
	//show_debug_message("whoad")
	move_mode = false;
}

x = clamp(x, view_half_width, room_width - view_half_width);
y = clamp(y, view_half_height, room_width - view_half_height);
camera_set_view_pos(camera, x - view_half_width, y - view_half_height);