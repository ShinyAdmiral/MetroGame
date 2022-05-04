/// @description input
if (mouse_x > x - button_width * 0.5 && mouse_x < x + button_width * 0.5 &&
	mouse_y > y - button_height * 0.5 && mouse_y < y + button_height * 0.5){	
	hovered = true;
}

else{
	hovered = false;
}

if (hovered && mouse_check_button_pressed(mb_left)) event_user(0);