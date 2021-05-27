/// @desc 
if (ACTIVE){
	
	if (mouse_check_button_released(mb_left) && !addAChar){
		var size = ds_list_size(endStrings);
		if (endStringNum+1 == size){
			ACTIVE = false;
			ds_list_clear(endStrings);
			global.dialogueComplete = true;
		} else {
			endStringNum += 1;
			endString = endStrings[|endStringNum];
			newCharNumb = 1;
			addAChar = true;
			stringToWrite = "";
			stringNotToWrite = "";
		}
	}
}