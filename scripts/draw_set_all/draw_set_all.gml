/// @description draw_set_all(halign, valign, color, font, alpha)
/// @param <halign>
/// @param <valign>
/// @param <color>
/// @param <font>
/// @param <alpha>
function draw_set_all() {
	// You can skip any pararmeter by inserting 0

	if (argument_count > 0){
		if (argument[0] != 0){
			draw_set_halign(argument[0]);
		}
	} 
	if (argument_count > 1){
		if (argument[1] != 0){
			draw_set_valign(argument[1]);
		}
	}
	if (argument_count > 2){
		if (argument[2] != 0){
			draw_set_color(argument[2]);
		}
	}
	if (argument_count > 3){
		if (argument[3] != 0){
			draw_set_font(argument[3]);
		}
	}
	if (argument_count > 4){
		if (argument[4] != 0){
			draw_set_alpha(argument[4]);
		}
	}


}
