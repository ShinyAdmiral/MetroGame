/// @description stay put

if (at_destination) {
	image_xscale	+= final_scale_speed;
	image_yscale	+= final_scale_speed;
	image_alpha		-= final_alpha_speed;
	
	if (image_alpha < 0) instance_destroy(self);
}
else{
	if (!picked_up){
		StayPut();
	
		if (IsHovering() && !global.person_picked_up){
			if (mouse_check_button_pressed(mb_left))
				AttatchToMouse();
		
			global.person_hovered = id;
		
			image_xscale = hover_scale;
			image_yscale = hover_scale;
		}
		else{
			image_xscale = 1;
			image_yscale = 1;
		}
	}

	else MoveObject();
}