/// @description 
switch(room){
	case rm_Start:
		if (startDisappearing){
			drawAlpha -= 0.016;
			if (drawAlpha <= 0){
				drawAlpha = 0;
			}
			draw_set_alpha(drawAlpha);
			if (drawAlpha == 0){
				startDisappearing = false;
			}
		}
	break;
	case rm_Cutscene_1:
		if (global.dialogueComplete){
			global.dialogueComplete = false;
			room_goto_next();
		}
	break;
	case rm_Cutscene_2:
		if (global.dialogueComplete && !done1){
			audio_play_sound(snd_mailslot,0,false);
			alarm[0]= room_speed*2;
			done1 = true;
		}
	break;
	case rm_Cutscene_3:
		if (global.dialogueComplete && !done2){
			room_goto(rm_Computer);
			done2 = true;
		}
	break;
	case rm_Confrontation:
		if (global.dialogueComplete && !done3){
			if (audio_is_playing(snd_msc_intense)){
				audio_stop_sound(snd_msc_intense);
				audioUsedToBePlaying = true;
			}
			audio_play_sound(snd_shot,0,false);
			if(global.notesSaved){
				global.searchResult = "The Police came after the gunshot from your room was reported.\n\nThey found your body on the floor. And while searching the room\n\nthey saw your notes and went after the killer\n\nthey were able to catch him before he left the country\n\nWith him in custody the police were able to take down Optimus.\n\n\nYou did good. You did very good";
			} else {
				global.searchResult = "The Police came after the gunshot from your room was reported.\n\nThey found your body on the floor. \n\nThey couldn't find any thing that lead to your killer in the room.\n\nAnd by the time they decoded the notes, the killer had already left the country\n\n\nWell at least you found the killer, that is more than what most people can say\n\nDo you think there is something you could have done to stop the killer?";
			}
			alarm[1] = room_speed*2
			
			done3 = true;
		}
	break;
}

if (room == rm_Cutscene_1 || room == rm_Cutscene_2 || room == rm_Cutscene_3){
	if (keyboard_check_released(vk_escape)){
		room_goto(rm_Computer);
		with (obj_DiaBox){
			ACTIVE = false;
			ds_list_clear(endStrings);
			global.dialogueComplete = true;
		}
	}
}