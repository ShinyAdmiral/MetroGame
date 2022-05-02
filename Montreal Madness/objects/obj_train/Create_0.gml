/// @description vars
line = noone;
current_point = 0;
current_direction = 1;

time = 0;
scale_x = 1;

width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);
hovered = false;

og_sprite = sprite_index;
og_speed = train_speed;

current_station = "";

waiting_for_major = false; 
waiting_for_people = false;

//struct for spots
function person_spot_train(_inst, _off_x) constructor{
	inst			= _inst;
	off_x			= _off_x;
	last_occupied	= _inst.occupied_by;
	
	function update(_x, _y){
		inst.x = _x + off_x;
		inst.y = _y;
	}
}

person_spots = array_create(3, noone);
for (var i = -1; i < 2; i++){
	var _inst = instance_create_layer(x + 8 * i, y, "World_UI", obj_person_space);
	_inst.visible = false;
	person_spots[i + 1] = new person_spot_train(_inst, 8 * i);
}

function Start(){
	x = line[|current_point].x;
	y = line[|current_point].y;
}

function Move(){
	var stop = false;
	
	var _id = id;
	var _current_point = current_point;
	var _direction = current_direction
	
	//stop if we are about to pass a train heading in the same direction
	with(object_index){
		if (_id == id) continue;
		if (_direction != current_direction) continue;
		
		var _range = abs(current_point - _current_point);
		
		
		if (current_direction > 0){
			if (_range < train_space && _current_point < current_point) {
				stop = true;
				break;
			}
		}
		else{
			if (_range < train_space && _current_point > current_point) {
				stop = true;
				break;
			}
		}
	}
	
	//stop of we are in a que or if a train is in front
	if (!stop && !waiting_for_major && !waiting_for_people)
		//otherwise go
		move_towards_point(line[|current_point].x, line[|current_point].y, train_speed);
	else
		speed = 0;
	
	//select next target
	if (point_distance(line[|current_point].x, line[|current_point].y, x, y) <= train_speed + 1 && alarm[0] <= 0){
		
		//if the current station is a boarding one, wait a moment
		if (line[|current_point].object_index == obj_major_station){
			train_speed = 0;
			alarm[0] = room_speed * major_stattion_wait_time;
		}
		else{
			current_point += current_direction;
			if (current_point < 0 || current_point >= ds_list_size(line)){
				current_direction *= -1;
				current_point += current_direction;
			}
			
			//if next station is a major one, add self to a queue
			if (line[|current_point].object_index == obj_major_station){
				waiting_for_major = true;
				line[|current_point].AddToQueue(id);
			}
		}
	}
}

function Animate(){
	if (x - line[|current_point].x > 0)
		image_xscale = -scale_x;
	else
		image_xscale = scale_x;
	
	sprite_index = og_sprite;
	time += delta_time * 0.000002;
	image_yscale = sin(time * pi) * 0.1 + 1;
	scale_x = cos(time * pi) * 0.1 + 1;
}
	
function IsHovering(){
	var _b = hover_buffer;
	if (hovered) _b = hovered_buffer;
	
	return mouse_x > x - width  * 0.5 - _b && mouse_x < x + width  * 0.5 + _b &&
		   mouse_y > y - height * 0.5 - _b && mouse_y < y + height * 0.5 + _b;
}

function DisplayBlank(){
	if (global.person_picked_up && global.current_person_station != current_station)
		sprite_index = spr_wrongTrain;
	else
		sprite_index = spr_blankTrain;
	image_xscale = hovered_growth * sign(image_xscale);
	image_yscale = hovered_growth;
}

function GetCurrentStation(){
	var _temp_future = current_point - current_direction;
	if (_temp_future < 0 || _temp_future >= ds_list_size(line))
		_temp_future = current_point;
		
	if (point_distance(line[|current_point].x, line[|current_point].y, x, y) < 
		point_distance(line[|_temp_future].x , line[|_temp_future].y , x, y)) 
		
		current_station = line[|current_point].name;
	
	else
		current_station = line[|_temp_future].name;
}