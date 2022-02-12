draw_set_alpha(image_alpha);
draw_line_width_color(xx1,yy1,assx,assy,4,c1,c2);
draw_line_width_color(xx2,yy2,assx,assy+8,2,c1,c2);
draw_line_width_color(xx3,yy3,assx,assy-8,2,c1,c2);

draw_set_blend_mode(bm_add)
draw_set_alpha(0.1*image_alpha);
draw_line_width_color(xx1,yy1,assx,assy,16,c1,c2);
draw_line_width_color(xx2,yy2,assx,assy+8,12,c1,c2);
draw_line_width_color(xx3,yy3,assx,assy-8,12,c1,c2);
draw_set_alpha(1);

draw_set_blend_mode(bm_normal)