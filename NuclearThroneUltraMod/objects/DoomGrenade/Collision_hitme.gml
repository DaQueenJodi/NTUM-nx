if other.team != team && team!=0
{
instance_destroy()
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
with other
{
my_health -= 15
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,10)
}

}

