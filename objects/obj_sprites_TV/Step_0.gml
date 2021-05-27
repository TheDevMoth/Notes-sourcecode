/// @desc 
if (path_position > 0.5 && path_position < 0.8){
	path_speed -= 0.013;
}
if (path_position > 0.8){
	if(path_speed > 1){
		path_speed -= 0.09;
	}
}