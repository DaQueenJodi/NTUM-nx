ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//snd_play(sndJackHammer)
//FIRING

repeat(2)
{
with instance_create(x,y,IceFlame)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(10)-5,5+random(3))
team = other.team
move_contact_solid(direction,12)}
}

BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 1
wkick = 2.5}


if ammo <= 0
instance_destroy()


