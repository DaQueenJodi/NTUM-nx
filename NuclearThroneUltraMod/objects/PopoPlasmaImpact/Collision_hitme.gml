if other.team != team
{
with other
{
if sprite_index != spr_hurt
{
snd_play(snd_hurt)
my_health -= 4//10
sprite_index = spr_hurt
image_index = 0
motion_add(point_direction(other.x,other.y,x,y),2)
Sleep(100)
BackCont.shake += 2
}
}
}

