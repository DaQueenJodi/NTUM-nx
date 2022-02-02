if speed > 1 and other.team != team
{
hits-=1;
snd_play(other.snd_hurt, other.hurt_pitch_variation)
if other.my_health >= 8 and (alarm[1]<1 || other.sprite_index != other.spr_hurt)
{
instance_destroy()

with other
{
my_health -= 6//9//20
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,4)
}
//Target = other.id
/*with instance_create(x,y,BoltStick)
{
sprite_index = sprSplinterStick
image_angle = other.image_angle
target = other.Target
}*/
}
if other.my_health < 8 and (alarm[1]<1 || other.sprite_index != other.spr_hurt)
{
with other
{
my_health -= 8
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)
}
}
if alarm[1]<1
alarm[1]=5
}

/* */
/*  */
