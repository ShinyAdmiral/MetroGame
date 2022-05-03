/// @description back button
var _back = keyboard_check_pressed(vk_escape) || back_button.pressed;

if (_back && displaying_portrait) {
	displaying_portrait = false;
	//instance_activate_object(obj_painting_clickable);
	with(obj_painting_clickable) disabled = false;
}
else if (_back && !displaying_portrait){
	room_goto(rm_main)
}

