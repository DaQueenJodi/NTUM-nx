ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndRocket)


with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)-15*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team}

with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)+15*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team}

with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)-30*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)+30*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team}

with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)-45*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)+45*other.creator.accuracy,2+random(3))
image_angle = direction
team = other.team}

with creator{
motion_add(point_direction(x,y,mouse_x,mouse_y)+180,4)
wkick = 12}

BackCont.viewx2 += lengthdir_x(28,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(28,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
}


if ammo <= 0
instance_destroy()

