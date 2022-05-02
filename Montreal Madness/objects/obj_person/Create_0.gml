/// @description randomize and set up
image_index = irandom_range(0, image_number - 2);
current_occupide_node = noone;
move_back_lerp = 0;
move_back_start_x = 0;
move_back_start_y = 0;

global.person_picked_up = false;

mouse_offset_x = 0;
mouse_offset_y = 0;

picked_up = false;
width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);

function StayPut(){
	if (current_occupide_node == noone) return;
	current_occupide_node.occupied_by = id;
	
	if (move_back_lerp == 0){
		x = current_occupide_node.x;
		y = current_occupide_node.y;
	}
	else{
		move_back_lerp -= delta_time * 0.000001 * move_back_speed;
		move_back_lerp = max(move_back_lerp, 0);
		
		var _lerp = cos(move_back_lerp * pi + pi) * 0.5 + 0.5;
		x = lerp(current_occupide_node.x, move_back_start_x, _lerp);
		y = lerp(current_occupide_node.y, move_back_start_y, _lerp);
		visible = true;
	}
}

function MoveObject(){
	if (current_occupide_node != noone) current_occupide_node.occupied_by = id;
	
	x = mouse_x - mouse_offset_x;
	y = mouse_y - mouse_offset_y;
	visible = true;
	
	if (!mouse_check_button(mb_left)) UnAttatchToMouse();
}
	
function IsHovering(){
	return mouse_x > x - width  * 0.5 && mouse_x < x + width  * 0.5 &&
		   mouse_y > y - height * 0.5 && mouse_y < y + height * 0.5;
}

function AttatchToMouse(){
	if (global.person_picked_up) return;
	
	picked_up = true;
	global.person_picked_up = true;
	
	mouse_offset_x = mouse_x - x;
	mouse_offset_y = mouse_y - y;
}

function UnAttatchToMouse(){
	//valid spot?
	
	picked_up = false;
	global.person_picked_up = false;
	move_back_start_x = x;
	move_back_start_y = y;
	move_back_lerp = 1;
}