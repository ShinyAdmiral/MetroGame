/// @description Insert description here

if (IsHovering() && global.hovered_ocupied == noone){
	speed = 0;
	global.hovered_ocupied = id;
	hovered = true;
	
	GetCurrentStation();
	
	for (var i = 0; i < 3; i++){
		person_spots[i].inst.visible = true;
		person_spots[i].inst.current_station = current_station;
	}
}

if (!IsHovering() && global.hovered_ocupied == id){
	hovered = false;
	global.hovered_ocupied = noone;
	
	for (var i = 0; i < 3; i++){
		person_spots[i].inst.visible = false;
	}
}

if (!hovered){
	Move();
	Animate();
	GetCurrentStation();
}

else{
	DisplayBlank();
}

//update position
for (var i = 0; i < 3; i++){
	person_spots[i].update(x, y);
	person_spots[i].inst.current_station = current_station;
}