if speed > 0 and other.team != team
{
snd_play(other.snd_hurt)
if other.my_health >= 20
{
instance_destroy()

with other
{
my_health -= 45
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,12)
}
target = other.id
with instance_create(x,y,BoltStick)
{
image_angle = other.image_angle
target = other.target
}
}
else if other.my_health < 20 and (alarm[1]<1 || other.sprite_index != other.spr_hurt)// and other.sprite_index != other.spr_hurt
{
with other
{
my_health -= 45
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,12)
}
alarm[1]=4
}
}

