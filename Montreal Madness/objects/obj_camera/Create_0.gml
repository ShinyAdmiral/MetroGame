/// @description Start at the middle
x = room_width * 0.5;
y = room_height * 0.5;

//get camera stuff
camera = view_camera[0];
view_height = camera_get_view_height(camera);
view_width = camera_get_view_width(camera);

view_half_height = view_height * 0.5;
view_half_width = view_width * 0.5;

camera_set_view_pos(camera, x - view_half_width, y - view_half_height);

move_mode = false;

start_mouse_x = 0;
start_mouse_y = 0;
start_pos_x = 0;
start_pos_y = 0;