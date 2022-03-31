/// @description Insert description here

move_towards_point(line[|current_point].x, line[|current_point].y, train_speed);
if (point_distance(line[|current_point].x, line[|current_point].y, x, y) <= train_speed + 1){
	current_point += current_direction;
	
	if (current_point < 0 || current_point >= ds_list_size(line)){
		current_direction *= -1;
		current_point += current_direction;
	}
}

if (x - line[|current_point].x > 0)
	image_xscale = -scale_x;
else
	image_xscale = scale_x;

time += delta_time * 0.000002;
image_yscale = sin(time * pi) * 0.1 + 1;
scale_x = cos(time * pi) * 0.1 + 1;