font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
draw_set_font(font);
draw_set_halign(fa_center);
draw_set_color(c_red);
draw_text_transformed(480, 100, "THANK YOU FOR FINISHING THIS AWFUL APRIL FOOLS DEMO!!", 0.5, 0.5, 0);
draw_text_transformed(480, 200, "PRESS F1 TO DESTROY ALL NERD BLOCKS AND F2 TO PLAY AS THE NOISE!!", 0.5, 0.5, 0);
