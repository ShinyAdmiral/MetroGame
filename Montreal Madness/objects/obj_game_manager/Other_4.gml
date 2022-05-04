/// @description set up stating group

if (started) exit;
started = true;

//music
music_index = irandom_range(0, max_music_tracks);
switch(music_index){
	case 0: music = audio_play_sound(msc_music1, 10, false); break;
	case 1: music = audio_play_sound(msc_music2, 10, false); break;
	case 2: music = audio_play_sound(msc_music3, 10, false); break;
	case 3: music = audio_play_sound(msc_music4, 10, false); break;
}


//add new inventory
instance_destroy(obj_painting_inventory);
instance_create_layer(x, y, "Instances", obj_painting_inventory);

with(obj_station_container)		SetUp();
with(obj_connection_manager)	SetUp();

for(var i = 0; i < starting_amount; ++i){
	spawn_character();
	current_amount++;
}