ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_2d(sndGrenade)


with instance_create(x,y,DoomGrenade)
{
walk=6+irandom(6);
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(14)-7)*other.creator.accuracy,16)
team = other.team

    if (instance_exists(Player))
    {
    
    if Player.race=11//HUNTER Projectile speed
    {
    if team=2
    speed*=1.18;
    }
    }
}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick = 4

}


if ammo <= 0
instance_destroy()

