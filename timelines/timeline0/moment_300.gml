/// @desc blank screen and open envelop
var lyrid = layer_get_id("Background");
var bgid = layer_background_get_id(lyrid);
layer_background_index(bgid, 1);
audio_play_sound(snd_paperCrumble,0,false);