if other.team != team
{with other
{
if sprite_index != spr_hurt
{
snd_play(snd_hurt)
my_health -= 4
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
BackCont.shake += 3
}
}
Sleep(10)}

