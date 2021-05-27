/// @desc 
isMouseOver = mouse_over();
if (isMouseOver && mouse_check_button_released(mb_left)){
	room_goto(rm_Confrontation);
	if (audio_is_playing(snd_msc)){
		audio_stop_sound(snd_msc);
		audio_play_sound(snd_msc_intense, 0, true);
	}
	with(obj_DiaBox){
		ds_list_add(endStrings, "Well what do we have here?", "I didn't actually think you'd figure it out to be honest.", "Thanks for decoding the notes for me. Now I know what evidence I need to get rid of.", "I almost don't want to kill you. But then again it's just one more person, what is the difference? Good.. bye");
		event_user(0);
	}
}