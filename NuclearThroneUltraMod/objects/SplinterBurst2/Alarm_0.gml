ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_fire(sndSplinterMinigun)
var dir = point_direction(x,y,mouse_x,mouse_y) + (accuracy * sin(ammo));
repeat(3)
with instance_create(x,y,BouncerSplinter)//5 splinters
{
	motion_add(dir+random(8)-4,20+random(4))
	image_angle = direction
	team = other.team
	if Player.race=11
	{
		if team=2
			speed*=1.18;
	}
}

BackCont.viewx2 += lengthdir_x(7,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(7,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
creator.wkick = 4
}


if ammo <= 0
instance_destroy()

