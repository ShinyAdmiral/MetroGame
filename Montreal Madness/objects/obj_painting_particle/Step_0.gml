/// @description fade out over time
var _x = obj_camera.x + 52;
var _y = obj_camera.y - 52;

if (y < obj_camera.y - 64 || x > obj_camera.x + 64){
	x = obj_camera.x - 80;
	y = obj_camera.y + 80;
}

move_towards_point(_x, _y, move_speed);
image_angle = 0;
if (point_distance(x, y, _x, _y) < move_speed * 1.5)
	instance_destroy(self);