/// @description Insert description here

move_towards_point(line[|current_point].x, line[|current_point].y, train_speed);
if (point_distance(line[|current_point].x, line[|current_point].y, x, y) <= train_speed + 1){
	current_point += current_direction;
	
	if (current_point < 0 || current_point >= ds_list_size(line)){
		current_direction *= -1;
		current_point += current_direction;
	}
}