/// @description 

if (!displaying_portrait){
	var _sprite = noone;

	with(obj_painting_clickable){
		if (hovered && mouse_check_button_pressed(mb_left)){
			_sprite = image;
		}
	}

	if (_sprite != noone){
		displaying_sprite = _sprite;
		displaying_portrait = true;
		with(obj_painting_clickable) disabled = true;
	}
}
