/// @desc 
isMouseOver = mouse_over();
if (isMouseOver && mouse_check_button_released(mb_left)){
	with(obj_DiaBox){
		endStrings[|0] = "You saved your notes just incase";
		event_user(0);
	}
	global.notesSaved = true 
}