snd_play(sndGrenade)
if instance_exists(Player) && instance_exists(creator)
{
with instance_create(x,y,FlakBullet)
{
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.creator.accuracy,11+random(2))
image_angle = direction
team = other.team
bullets=other.rate*1.3;}


BackCont.viewx2 += lengthdir_x(rate,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(rate,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += rate
if rate>12
rate=12;

creator.wkick = rate
}
audio_stop_sound(sndCharge);

