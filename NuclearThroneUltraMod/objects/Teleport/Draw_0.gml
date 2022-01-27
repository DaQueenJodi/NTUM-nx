/// @description lines drawing
if instance_exists(Player)
{
draw_line_width_color(x,y,Player.x,Player.y,4,make_color_rgb(56,0,106),make_color_rgb(145,148,255) );
draw_line_width_color(x,y,Player.x,Player.y+8,2,make_color_rgb(56,0,106),make_color_rgb(145,148,255) );
draw_line_width_color(x,y,Player.x,Player.y-8,2,make_color_rgb(56,0,106),make_color_rgb(145,148,255) );

draw_set_blend_mode(bm_add)
draw_set_alpha(0.1);
draw_line_width_color(x,y,Player.x,Player.y,16,make_color_rgb(56,0,106),make_color_rgb(145,148,255) );
draw_line_width_color(x,y,Player.x,Player.y+8,12,make_color_rgb(56,0,106),make_color_rgb(145,148,255) );
draw_line_width_color(x,y,Player.x,Player.y-8,12,make_color_rgb(56,0,106),make_color_rgb(145,148,255) );
draw_set_alpha(1);

draw_set_blend_mode(bm_normal)

}
else
instance_destroy();

