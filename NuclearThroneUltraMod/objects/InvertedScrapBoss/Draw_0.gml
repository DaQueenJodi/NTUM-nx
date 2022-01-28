if instance_exists(Drama)
{
with InvertedScrapBoss
{
draw_sprite_ext(sprInvertedScrapBossIntro,-1,x,y,right,1,0,c_white,1)
image_index += 0.4
}
}
else
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)

