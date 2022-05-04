/// @descriptionreset person hovered
global.person_hovered = noone;

//check music
if (!audio_is_playing(music) && alarm[0] <= 0){
	music_index++;
	if (music_index > max_music_tracks) music_index = 0;
	alarm[0] = room_speed * 2;
}