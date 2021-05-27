/// @description
if (ACTIVE){
	depth = 0;
	draw_self();
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_set_font(fnt_DiaBox);

	/*if (!variable_instance_exists(id, endString)){
		endString = "Your mother is quite the homosexual";
	}*/

	if (addAChar){
		var newChar = string_char_at(endString, newCharNumb);
		stringToWrite += newChar;
		stringNotToWrite += newChar;
		newCharNumb += 1;
		if (stringNotToWrite == endString){
			addAChar = false;
		}
	}

	if (string_width(stringToWrite) > sprite_width-60 && addAChar){
		var latestSpaceFound = false;
		var placeToCheck = string_length(stringToWrite);
	
		while(latestSpaceFound == false){
			var charAt = string_char_at(stringToWrite, placeToCheck);
			if(charAt == " "){
				stringToWrite = string_insert("\n\n", stringToWrite, placeToCheck+1);
				latestSpaceFound = true;
			} else {
				placeToCheck -= 1;
			}
		}
	}

	draw_text(x-sprite_xoffset+30, y-sprite_yoffset+20, stringToWrite);
}