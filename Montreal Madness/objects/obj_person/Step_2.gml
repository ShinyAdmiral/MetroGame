/// @description wait for the unattachment

if (picked_up && !at_destination) 
	if (!mouse_check_button(mb_left)) 
		UnAttatchToMouse();

if (!at_destination && desired_station == current_station && !picked_up){
	//perform last farewell
	at_destination = true;
	instance_create_layer(x, y, "Hearts", obj_heat_particle);
	layer = layer_get_id("Selected_Person");
	player_leave_event(desired_station);
}