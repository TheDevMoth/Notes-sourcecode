draw_self();

draw_set_valign(fa_left);
draw_set_halign(fa_left);
draw_set_font(fnt_InsertText);
draw_set_color(c_dkgray);
draw_text_transformed(x + 12, y+sprite_yoffset-2, inputTxt, 4, 4, 0);
draw_set_color(c_white);