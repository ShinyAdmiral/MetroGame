/// @description set up things
randomize();

//grab list of stations
station_list = ds_list_create();
with(obj_station_container) ds_list_add(other.station_list, id);

dialogue_map = ds_map_create();
scr_assign_dialogue();

global.person_picked_up = false;
global.person_hovered = noone;
global.current_person_station = "";
nine_slice_surface = noone;

top_position_y = 0;
bottom_position_y = 89;
current_postion_y = bottom_position_y;