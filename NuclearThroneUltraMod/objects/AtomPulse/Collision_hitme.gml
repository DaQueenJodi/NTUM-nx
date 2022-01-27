if other.team != team and other.my_health > 0 and random(2)<1
{
with other
{
my_health -= 1
sprite_index = spr_hurt
image_index = 0
motion_add(other.image_angle,4)
}
snd_play(other.snd_hurt)
instance_create(x,y,Smoke)}

