if other.team != team and other.my_health > 0 && team!=2
{//instance_destroy()
speed*=0.8;
with other
{
if sprite_index!= spr_hurt{
my_health -= 16
sprite_index = spr_hurt
image_index = 0}
motion_add(other.direction,8)
}
snd_play(other.snd_hurt)

}
else if other.team != 2 and other.my_health > 0 && other.team != team
{//player hit
speed*=0.8;
with other
{
if sprite_index!= spr_hurt{
my_health -= 4
sprite_index = spr_hurt
image_index = 0}
motion_add(other.direction,8)
}
snd_play(other.snd_hurt)

}


