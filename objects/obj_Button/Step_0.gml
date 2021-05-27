isMouseOver = mouse_over();


//Requirments for the button to be Clickable
if (needsVariablesSet){
	if (setOfVariablesNeeded == ""){
		
	} 
}

//Set of functions
if (buttonClickable){
	if (buttonFunction == "Go To Room"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			room_goto(roomToGo);
			//audio_play_sound(snd_button, 0, false);
		}
	} else if (buttonFunction == "Restart Game"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			//audio_play_sound(snd_button, 0, false);
			game_restart();
		}
	} else if (buttonFunction == "Quit Game"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			game_end();
		}
	} else if (buttonFunction == "Start Game"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			obj_Rooms.startDisappearing = true;
			obj_Button.startDisappearing = true;
		}
	} else if (buttonFunction == "Back to Doodle"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			if (global.killerFound){
				room_goto(rm_End);
			} else {
				global.page = 0;
				global.searchedTerm = "";
				global.searchResult = "";
				room_goto(rm_Computer);
			}
		}
	} else if (buttonFunction == "Doodel"){
		if (isMouseOver && mouse_check_button_released(mb_left)){
			with(obj_Insert_Inside){
				event_user(0);
			}
		}
	}
}

if (startDisappearing){
	drawAlpha -= 0.016;
	buttonClickable = false;
	if (drawAlpha <= 0){
		drawAlpha = 0;
	}
	draw_set_alpha(drawAlpha);
	if (drawAlpha == 0){
		startDisappearing = false;
		alarm[0] = room_speed;
	}
}
