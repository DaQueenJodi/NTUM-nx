if instance_exists(Drama)
{
with InvertedAssassinBoss
{
draw_sprite_ext(sprInvertedAssassinBossSword,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)
draw_sprite_ext(sprInvertedAssassinBossSit,-1,x,y,right,1,0,c_white,1)
image_index += 0.4
}
}
else
{

if gunangle <= 180
draw_sprite_ext(sprInvertedAssassinBossSword,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)
if gunangle > 180
draw_sprite_ext(sprInvertedAssassinBossSword,-1,x,y,1,wepflip,gunangle+wepangle,c_white,1)

}


if speed>1
{
draw_set_blend_mode(bm_add);
draw_sprite_ext(sprInvertedAssassinBossDash,image_index-1,xprevious,yprevious,right,1,0,c_white,0.6);
draw_set_blend_mode(bm_normal);
}

