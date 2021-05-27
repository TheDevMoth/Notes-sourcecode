/// @desc 
if (room != rm_AfterEnd){
	draw_sprite(spr_inside_computerScreen, global.page, room_width/2, room_height/2);
}
draw_self();
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_set_color(c_white);
draw_set_font(fnt_DiaBox);
draw_text(x-sprite_xoffset+30, y-sprite_yoffset+30, global.searchResult);