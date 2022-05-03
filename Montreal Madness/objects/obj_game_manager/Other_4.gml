/// @description set up stating group

if (started) exit;
started = true;

with(obj_station_container)		SetUp();
with(obj_connection_manager)	SetUp();

for(var i = 0; i < starting_amount; ++i){
	spawn_character();
	current_amount++;
}