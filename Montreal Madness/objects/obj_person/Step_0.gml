/// @description stay put

if (!picked_up){
	StayPut();
	
	if (IsHovering() && !global.person_picked_up){
		if (mouse_check_button_pressed(mb_left))
			AttatchToMouse();
		
		image_xscale = hover_scale;
		image_yscale = hover_scale;
	}
	else{
		image_xscale = 1;
		image_yscale = 1;
	}
}

else MoveObject();
