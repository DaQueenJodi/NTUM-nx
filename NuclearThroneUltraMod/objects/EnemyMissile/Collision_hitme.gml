if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation)
with other
{
my_health -= 10
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,7)
}
}

