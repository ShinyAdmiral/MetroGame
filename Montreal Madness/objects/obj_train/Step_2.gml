/// @description delay movement if occupancy has changed
var _wait_for_people = false;
for (var i = 0; i < 3; i++){
	if (person_spots[i].last_occupied != person_spots[i].inst.occupied_by) _wait_for_people = true;
	person_spots[i].last_occupied = person_spots[i].inst.occupied_by;
}

if (_wait_for_people){
	waiting_for_people = true
	//show_debug_message("activated");
	alarm[1] = person_wait_time * room_speed;
}