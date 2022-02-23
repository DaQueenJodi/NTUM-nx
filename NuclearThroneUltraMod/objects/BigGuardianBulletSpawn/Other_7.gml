/// @description Spawn projectiles
scrTarget();
var dir = point_direction(x,y,target.x,target.y);
snd_play(sndBigBallFire);
with instance_create(x,y,BigGuardianBullet)
{	
	team = other.team;
	x += lengthdir_x(8, dir);
	y += lengthdir_y(8, dir);
	motion_add(dir,6+random(4));
}

instance_destroy();