/// @description any writing on screen
draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_white);
draw_set_font(fnt_FreeWriting);
if(room != rm_Start){
	draw_set_alpha(1);
}


switch(room){
	case rm_Start:
		draw_set_font(fnt_Title);
		draw_text(room_width/24, room_height/8, "Notes");
		draw_set_font(fnt_FreeWriting);
	break;
	
	case rm_Default:
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/2, "Umm.. you are not supposed to be here");
		draw_set_halign(fa_left);
	break;
	
	case rm_Options:
		draw_set_valign(fa_top);
		draw_text(room_width/10, room_height/10 , "Game development, Art, and design by Mohammed AbuShawarib.\n\n\nMusic:\nTrouble Makers by Matthew Pablo.\nwww.matthewpablo.com\n\nClassical Murder by Alexandr Zhelanov.\nhttps://soundcloud.com/alexandr-zhelanov\n\n\nWith special thanks to Doubleh.");
		draw_set_valign(fa_center);
	break;
	
	case rm_Help:
		draw_set_valign(fa_top);
		draw_text(room_width/10, room_height/10, "-Use the notes attatched with the game to help you solve the case.\n\n-The Search result is determined by keywords that you search.\n\n-Searching is not case sensitive.\n\n-You can skip the first cutscene by clicking Escape.\n\n-Click F1 to toggle music.");
		draw_set_valign(fa_center);
	break;
}