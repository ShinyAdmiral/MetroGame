/// @description Insert description here
if (mouse_x > x && mouse_x < x_end_pos && 
	mouse_y > y && mouse_y < y_end_pos){
	
	if (!hover) for(var i = 0; i < person_max; ++i) character_slots[i].visible = true;
	hover = true;
}

else{
	if (hover) for(var i = 0; i < person_max; ++i) character_slots[i].visible = false;
	hover = false;
}