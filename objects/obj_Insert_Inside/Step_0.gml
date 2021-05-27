isMouseOver = mouse_over();

if (isMouseOver && mouse_check_button_released(mb_left)){
	//obj_Insert_Inside.currentlyUsed = false;
	currentlyUsed = true;
	keyboard_string = "";
	audio_play_sound(snd_Blib, 0, false);
} else if (!isMouseOver && mouse_check_button_released(mb_left)){
	currentlyUsed = false;
}

if (currentlyUsed){
	var wid = string_width(keyboard_string);
	if (wid < 137){
		inputTxt = keyboard_string
	} else {
		keyboard_string = inputTxt;
	}
}
if (keyboard_check_released(vk_enter)){
	
	event_user(0);
}