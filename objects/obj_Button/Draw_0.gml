draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(txtFont);

if (mouse_check_button(mb_left) && isMouseOver){
	draw_sprite(sprite, 1, x, y);
} else {
	draw_sprite(sprite, 0, x, y);
}

draw_set_color(txtColor);
draw_text(x, y, txtString);


/*
if (mouse_check_button(mb_left) && isMouseOver){
	draw_sprite_ext(Sprite, 0, x, y, 1, 1, 0, $FFD7F7FD, 1);
} else {
	draw_self();
}
*/