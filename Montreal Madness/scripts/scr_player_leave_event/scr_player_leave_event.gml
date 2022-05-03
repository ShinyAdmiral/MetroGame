// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_leave_event(){
	with(obj_game_manager) {
		if (current_amount < max_amount){
			current_amount++
			spawn_character();
		}
		
		spawn_character();
	}
}