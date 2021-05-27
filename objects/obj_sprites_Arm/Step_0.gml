/// @description 
if (path_position >= 0.99 && hatPicked == false){
	image_index = 1;
	alarm[0] = room_speed;
	hatPicked = true;
}
if (path_position >= 0.99 && hatPicked && countdownStarted == false){
	alarm[1] = room_speed*3;
	countdownStarted = true;
}