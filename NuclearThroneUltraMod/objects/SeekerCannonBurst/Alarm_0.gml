ammo -= 1

alarm[0] = time

leftang=point_direction(x,y,mouse_x,mouse_y)-60;
rightang=point_direction(x,y,mouse_x,mouse_y)+60;

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndSeekerCannon);


with instance_create(x,y,SeekerBolt)
{motion_add((other.leftang+other.ang)+(random(12)-6)-15*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team
}

if ang >= 120*creator.accuracy
left=false;
else if ang<=1*creator.accuracy
left=true


if left
ang+=10;
else
ang-=10;


BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick -= 0.6}


if ammo <= 0
instance_destroy()

