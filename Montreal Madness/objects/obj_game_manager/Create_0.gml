/// @description set up things
randomize();

//grab list of stations
station_list = ds_list_create();
with(obj_station_container) ds_list_add(other.station_list, id);

global.current_person_station = "";

nine_slice_surface = noone;