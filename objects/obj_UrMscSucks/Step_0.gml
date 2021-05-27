canClick = mouse_over();

//Clicking the check
if (canClick == true) {
	if (mouse_check_button_released(mb_any)){
		if (audio_is_playing(snd_msc)){
			audio_stop_sound(snd_msc);
		} else {
			audio_play_sound(snd_msc, 0, true);
		}
	}
}

//Music shortcut
if (keyboard_check_released(vk_f1)) {
	if (room == rm_Confrontation){
		if (audio_is_playing(snd_msc_intense)){
			audio_stop_sound(snd_msc_intense);
		} else {
			audio_play_sound(snd_msc_intense, 0, true);
		}
	} else {
		if (audio_is_playing(snd_msc)){
			audio_stop_sound(snd_msc);
		} else {
			audio_play_sound(snd_msc, 0, true);
		}
	}
}
//Check sprite toggle
if (audio_is_playing(snd_msc)){
	image_index = 0;
} else {
	image_index = 1;
}
