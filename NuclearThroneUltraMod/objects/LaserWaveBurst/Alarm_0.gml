ammo -= 1

alarm[0] = time

leftang=point_direction(x,y,mouse_x,mouse_y)-40;
rightang=point_direction(x,y,mouse_x,mouse_y)+40;

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING

if Player.skill_got[17] = 1
{
snd_play_fire(sndLaserUpg);
}
else
{
snd_play_fire(sndLaser);
}


with instance_create(x+lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)),Laser)
{image_angle = (other.leftang+other.ang)+(random(2)-1)*other.creator.accuracy
team = other.team
event_perform(ev_alarm,0)
image_yscale-=0.1;
scrCanHumphry();
}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 2



if ang >= 80*creator.accuracy
left=false;
else if ang<=1*creator.accuracy
left=true


if left
ang+=angleStep;
else
ang-=angleStep;
}


if ammo <= 0
instance_destroy()

