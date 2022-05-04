/// @description set up stating group

if (started) exit;
started = true;

//add new inventory
instance_destroy(obj_painting_inventory);
instance_create_layer(x, y, "Instances", obj_painting_inventory);

with(obj_station_container)		SetUp();
with(obj_connection_manager)	SetUp();

for(var i = 0; i < starting_amount; ++i){
	spawn_character();
	current_amount++;
}