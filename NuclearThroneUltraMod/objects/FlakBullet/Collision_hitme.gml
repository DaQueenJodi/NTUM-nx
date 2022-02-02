if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation)
Sleep(50)
with other
{
my_health -= 6
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}
}

