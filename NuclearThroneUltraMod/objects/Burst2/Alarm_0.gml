ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndPopgun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+180+random(50)-25,2+random(2))

with instance_create(x,y,Bullet2)
{
motion_add(point_direction(x,y,mouse_x,mouse_y)+random(14)-7,14+random(2))
image_angle = direction
team = other.team
    if (instance_exists(Player))
    {
    
    if Player.race=11
    {
    if team=2
    speed*=1.18;
    }
    }
}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 4}


if ammo <= 0
instance_destroy()

