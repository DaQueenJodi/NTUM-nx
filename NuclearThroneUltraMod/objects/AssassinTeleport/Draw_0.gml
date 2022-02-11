draw_set_alpha(image_alpha);
draw_line_width_color(x,y,assx,assy,4,c1,c2);
draw_line_width_color(x,y,assx,assy+8,2,c1,c2);
draw_line_width_color(x,y,assx,assy-8,2,c1,c2);

draw_set_blend_mode(bm_add)
draw_set_alpha(0.1*image_alpha);
draw_line_width_color(x,y,assx,assy,16,c1,c2);
draw_line_width_color(x,y,assx,assy+8,12,c1,c2);
draw_line_width_color(x,y,assx,assy-8,12,c1,c2);
draw_set_alpha(1);

draw_set_blend_mode(bm_normal)