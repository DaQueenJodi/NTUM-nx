if other.team != team
{
with other
{
if sprite_index != spr_hurt
{
snd_play(snd_hurt)
my_health -= other.dmg;
sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),2)
BackCont.shake += 1
}
}
}

