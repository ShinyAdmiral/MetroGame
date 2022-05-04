/// @description 

if (!displaying_portrait){
	var _sprite = noone;
	var _text = "";

	with(obj_painting_clickable){
		if (hovered && mouse_check_button_pressed(mb_left) && unlocked){
			_sprite = image;
			_text = text;
		}
		else if (hovered && mouse_check_button_pressed(mb_left) && !unlocked){
		
		}
	}

	if (_sprite != noone){
		displaying_sprite = _sprite;
		displaying_text = _text;
		displaying_portrait = true;
		with(obj_painting_clickable) disabled = true;
	}
}
