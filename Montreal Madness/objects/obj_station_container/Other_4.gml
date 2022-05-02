/// @description set up station

if (station_id == ""){
	var _station_hosting = noone;
	var _shortest_length = 999999;
	var _x = x;
	var _y = y;

	with(obj_major_station){
		var _dist = point_distance(_x, _y, x, y);
		if (_shortest_length > _dist){
			_shortest_length = _dist;
			_station_hosting = id;
		}
	}

	station_hosting = _station_hosting;
}
else{
	var _name = station_id;
	var _station_hosting = noone;
	
	with(obj_major_station)
		if (name == _name)
			_station_hosting = id;
		
	station_hosting = _station_hosting;
}