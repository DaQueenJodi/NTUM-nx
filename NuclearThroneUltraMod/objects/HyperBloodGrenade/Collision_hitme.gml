if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt)
with other
{
my_health -= 30//40 for the hypernade
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,16)
}
}

