/// @desc 

if (room == AppearingRoom){
	draw_self();
	
	draw_set_font(txtFont);
	draw_set_halign(fa_right); draw_set_valign(fa_center);
	draw_set_color(txtColor);
	
	draw_text(x - sprite_xoffset/2 - string_length(text) - 3, y, text);
}