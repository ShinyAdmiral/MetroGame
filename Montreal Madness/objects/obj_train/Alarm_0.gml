/// @description start train back up
train_speed = og_speed;

current_point += current_direction;
	
if (current_point < 0 || current_point >= ds_list_size(line)){
	current_direction *= -1;
	current_point += current_direction;
}