ammo -= 1

alarm[0] = time

if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play(sndShotgun)

repeat(5)
{
with instance_create(x,y,Bullet2)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(40)-20)*other.creator.accuracy,12+random(6))
image_angle = direction
team = other.team
}



if (instance_exists(Player))//HUNTER
    {
    
    if Player.race=11
    {
    if team=2
    speed*=1.18;
    }
    }

}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 8
wkick = 6
}


if ammo = 0
instance_destroy()


