if other.team != team
{
instance_destroy();
with other
{
if sprite_index != spr_hurt
{
snd_play(snd_hurt, hurt_pitch_variation)
my_health -= 3//6
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
BackCont.shake += 3
}
}
Sleep(10)}

