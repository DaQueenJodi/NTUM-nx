
draw_set_color(c_black)


draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,0)

with Spiral
{
if lanim > 0 and lanim < 6
{draw_sprite_ext(sprPortalLightning,lanim,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle+langle,c_white,1)
draw_sprite_ext(sprPortalLightning,lanim,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle+langle,c_black,0.4-image_xscale/2)}
draw_sprite_ext(sprite_index,-1,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle,c_white,1)
draw_sprite_ext(sprite_index,-1,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle,c_black,0.8-image_xscale)
}

with SpiralDebris
{
draw_sprite_ext(sprite_index,-1,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle,c_white,1)
draw_sprite_ext(sprite_index,-1,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle,c_black,1-image_xscale)
}


with SpiralStar
{
draw_sprite_ext(sprite_index,-1,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle,c_white,1)
draw_sprite_ext(sprite_index,-1,view_xview+x,view_yview+y,image_xscale,image_yscale,image_angle,c_black,1-image_xscale)
}

with SpiralCont
{
fishx = fishx-(fishx-(view_xview+x))*0.01
fishy = fishy-(fishy-(view_yview+y))*0.01

draw_sprite_ext(Player.spr_hurt,1,fishx,fishy,0.8+sin(image_angle/200)/5,0.8+sin(image_angle/200)/5,-image_angle*2,c_white,1)

draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+48,0)
draw_rectangle(view_xview,view_yview+view_hview,view_xview+view_wview,view_yview+view_hview-48,0)
}
