/// @description lines drawing
if instance_exists(Player)
{
draw_line_width_color(x,y,Player.x,Player.y,4,c1,c2 );
draw_line_width_color(x,y,Player.x,Player.y+8,2,c1,c2 );
draw_line_width_color(x,y,Player.x,Player.y-8,2,c1,c2 );

draw_set_blend_mode(bm_add)
draw_set_alpha(0.1);
draw_line_width_color(x,y,Player.x,Player.y,16,c1,c2 );
draw_line_width_color(x,y,Player.x,Player.y+8,12,c1,c2 );
draw_line_width_color(x,y,Player.x,Player.y-8,12,c1,c2 );
draw_set_alpha(1);

draw_set_blend_mode(bm_normal)

}
else
instance_destroy();