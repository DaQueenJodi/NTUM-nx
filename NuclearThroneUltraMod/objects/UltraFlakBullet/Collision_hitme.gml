if other.team != team
{
instance_destroy()
snd_play(other.snd_hurt)
Sleep(50)
with other
{
my_health -= other.dmg
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}
}

