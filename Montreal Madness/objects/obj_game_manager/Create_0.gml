/// @description set up things
randomize();

//grab list of stations
station_list = ds_list_create();
with(obj_station_container) ds_list_add(other.station_list, id);

dialogue_map = ds_map_create();
scr_assign_dialogue();


global.current_person_station = "";
nine_slice_surface = noone;