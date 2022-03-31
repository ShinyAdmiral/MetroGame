/// @description function declaration
checked = false;

//recursive function ment to loop until re run out of nodes
function searchForNode(_line, _search_id, _current_id){
	ds_list_add(_line, _current_id);
	_current_id.checked = true;
	
	var _list_col = ds_list_create();
	collision_circle_list(x, y, 30, _search_id, true, true, _list_col, false);
	with (obj_major_station) if (id != _current_id && point_distance(x, y, _current_id.x, _current_id.y) < 30) ds_list_add(_list_col);
	
	var size = ds_list_size(_list_col);
	
	if (size == 0) {ds_list_destroy(_list_col); return;}
	
	var closest_dist = point_distance(_current_id.x, _current_id.y, _list_col[|0].x, _list_col[|0].y);
	var closet_iter = 0;
	var found = _list_col[|0].checked;
	
	for (var i = 1; i < size; ++i){
		if (_list_col[|i].checked) continue;
		
		var _dist = point_distance(_current_id.x, _current_id.y, _list_col[|i].x, _list_col[|i].y);
		
		if (_dist < closest_dist){
			closet_iter = i;
			found = true;
		}
	}
	
	ds_list_destroy(_list_col);
	
	if (!found) return;
	
	searchForNode(_line, _search_id, _current_id);
}

//var collision_line_min = 30;
//ds_list_add(_map[?start_line_color], id)