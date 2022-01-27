snd_play(sndSplinterGun)

if instance_exists(Player)  && instance_exists(creator)
{

repeat(rate*1.3)
{
with instance_create(x,y,Splinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(6+other.rate)-(3+(other.rate*0.5))*other.creator.accuracy,20+random(4))
image_angle = direction
team = other.team
scrCanHumphry();}
}

BackCont.viewx2 += lengthdir_x(4+rate,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4+rate,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += rate
if rate>12
rate=12;

creator.wkick = rate
}

audio_stop_sound(sndCharge);

