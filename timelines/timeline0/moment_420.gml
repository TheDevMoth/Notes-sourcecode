/// @desc go to open envelop screen
var lyrid = layer_get_id("Background");
var bgid = layer_background_get_id(lyrid);
layer_background_index(bgid, 2);
with(obj_DiaBox){
	endStrings[|0] = "What's this?";
	endStrings[|1] = "Well, notes. but who's notes?";
	endStrings[|2] = "They are all meaningless."
	endStrings[|3] = "Could it just be a joke? or is there something hidden in them with somekind of code.";
	endStrings[|4] = "Wait this one is different. Unlike the others this one makes sense.";
	endStrings[|5] = "The person who wrote the writing at the bottom seems to have been in a hurry."
	endStrings[|6] = "Signed by a Diana Longman..";
	endStrings[|7] = "Isn't that one of the victims?";
	endStrings[|8] = "Well looks like we found a new case.";
	endStrings[|9] = "Let's look her up shall we?";
	event_user(0);
	
}