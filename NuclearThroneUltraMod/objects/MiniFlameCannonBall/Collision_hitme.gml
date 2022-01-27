if other.team != team and other.my_health > 0
{instance_destroy()
with other
{
if object_index!=Player
my_health -= 8
else
my_health -= 3

sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,8)
}
snd_play(other.snd_hurt)

}



