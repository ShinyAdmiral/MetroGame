/// @description wait for the unattachment

if (picked_up && !at_destination) 
	if (!mouse_check_button(mb_left)) 
		UnAttatchToMouse();
