ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndWaveGun)

with instance_create(x,y,Bullet6)
{
motion_add(point_direction(x,y,mouse_x,mouse_y)+random(4)-2+sin(other.ammo/2)*16,15)
image_angle = direction
team = other.team}
with instance_create(x,y,Bullet6)
{
motion_add(point_direction(x,y,mouse_x,mouse_y)+random(4)-2-sin(other.ammo/2)*16,15)
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

BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
creator.wkick = 7}


if ammo <= 0
instance_destroy()

