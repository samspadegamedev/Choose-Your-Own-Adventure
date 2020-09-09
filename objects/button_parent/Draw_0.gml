/// @description Button Parent

draw_set_color(c_one);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);

draw_set_color(c_two);
draw_set_font(my_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, my_text);
