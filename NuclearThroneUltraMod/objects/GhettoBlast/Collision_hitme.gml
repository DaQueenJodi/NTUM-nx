if other.team != team
{with other
{
if sprite_index != spr_hurt
{
snd_play(snd_hurt)
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
Sleep(other.sleepRate+size*10)
BackCont.shake += 5
}
motion_add(other.direction,26)
}
image_speed = 0.4;}

