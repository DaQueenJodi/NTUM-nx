if other.team != team and other.my_health > 0
{
with other
{
my_health -= 3
sprite_index = spr_hurt
image_index = 0
motion_add(other.image_angle,10)
}
snd_play(other.snd_hurt)
instance_create(x,y,Dust)}

