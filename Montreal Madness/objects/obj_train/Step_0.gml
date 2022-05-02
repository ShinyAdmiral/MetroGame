/// @description Insert description here

if (IsHovering() && global.hovered_ocupied == noone){
	speed = 0;
	global.hovered_ocupied = id;
	hovered = true;
}

if (!IsHovering() && global.hovered_ocupied == id){
	hovered = false;
	global.hovered_ocupied = noone;
}

if (!hovered){
	Move();
	Animate();
}