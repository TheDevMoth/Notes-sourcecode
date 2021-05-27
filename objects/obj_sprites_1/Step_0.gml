/// @desc 
if (path_position > 0.5 && path_position < 0.8){
	path_speed -= 0.013;
}
if (path_position > 0.8){
	if(path_speed > 1){
		path_speed -= 0.09;
	}
}

if (!diaBoxStarted && path_index == -1){
	var boxid = instance_create_layer(0, 0, "Dialogue", obj_DiaBox);
	with(boxid){
		ds_list_add(endStrings, "*News on TV*", "Police report that there have been several killings in the small town of Higsberg. The Police are still working on finding the killer, and they advise citizens of Higsberg to remain in their homes until further notice.");
		event_user(0);
	}
	diaBoxStarted = true;
}