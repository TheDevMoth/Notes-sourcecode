/// @desc 
if (room != rm_AfterEnd){
	if (global.interisting == true){
		var hmm = choose(snd_hmm1, snd_hmm2);
		audio_play_sound(hmm, 0, false);
	} else {
		var ehh = choose(snd_ehh1, snd_ehh2);
		audio_play_sound(ehh, 0, false);
	}
}