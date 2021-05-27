/// @desc 
var loweredTxt = string_lower(inputTxt);
global.searchedTerm = loweredTxt;
with(obj_gameControl){
	event_user(0);
}