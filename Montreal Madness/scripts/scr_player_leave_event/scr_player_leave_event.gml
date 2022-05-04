// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_leave_event(_desired_station){
	with(obj_game_manager) {
		if (current_amount < max_amount){
			current_amount++
			spawn_character();
		}
		
		spawn_character();
		
		if (alarm[1] <= 0){
			var _sfx = audio_play_sound(sfx_yay, 10, false);
			audio_sound_pitch(_sfx, random_range(0.9, 1.1));
			
			alarm[1] = 15;
		}
	}
	
	with(obj_ui) hearts_obtained++;
	
	var _x = x;
	var _y = y;
	
	with(obj_painting_inventory){
		switch(_desired_station){
			case "Angrignon":				if (!painitng_inventory[?spr_angrignonPark]							) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_angrignonPark]							= true; break;
			case "Berri-UQAM":				if (!painitng_inventory[?spr_berriUQAM]								) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_berriUQAM]								= true; break;
			case "Place D'armes":			if (!painitng_inventory[?spr_chinatown]								) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_chinatown]								= true; break;
			case "Cote-Vertu":				if (!painitng_inventory[?spr_coteVertuArtsAndCraftsMuseumOfQuebec]	) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_coteVertuArtsAndCraftsMuseumOfQuebec]		= true; break;
			case "Henri Bourassa":			if (!painitng_inventory[?spr_henriBourassaSaultAuRecollet]			) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_henriBourassaSaultAuRecollet]				= true; break;
			case "Honore-Beaugrand":		if (!painitng_inventory[?spr_honoreBeaugrandEndOfTheLine]			) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_honoreBeaugrandEndOfTheLine]				= true; break;
			case "Jean Drapeau":			if (!painitng_inventory[?spr_jeanDrapeauBiosphere]					) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_jeanDrapeauBiosphere]						= true; break;
			case "Jean-Talon":				if (!painitng_inventory[?spr_jeanTalon]								) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_jeanTalon]								= true; break;
			case "Lionel-Groulx":			if (!painitng_inventory[?spr_lionelGroux]							) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_lionelGroux]								= true; break;
			case "Montmorency":				if (!painitng_inventory[?spr_montmorencyPlaceBell]					) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_montmorencyPlaceBell]						= true; break;
			case "Place Des Art":			if (!painitng_inventory[?spr_placeDesArts]							) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_placeDesArts]								= true; break;
			case "Square Victoria":			if (!painitng_inventory[?spr_squareVictoria]						) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_squareVictoria]							= true; break;
			case "Universite De Montreal":	if (!painitng_inventory[?spr_universiteDeMontreal]					) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_universiteDeMontreal]						= true; break;
			case "Viau":					if (!painitng_inventory[?spr_viau]									) instance_create_layer(_x, _y, "Hearts", obj_painting_particle); painitng_inventory[?spr_viau]										= true; break;
		}
	}
}