/// @description Spawn projectiles
scrTarget();
var dir = point_direction(x,y,target.x,target.y);
snd_play(sndBigBallFire);
var addspeed = point_distance(x,y,target.x,target.y)*0.1;
debug(addspeed);

with instance_create(x,y,BigGuardianBullet)
{	
	team = other.team;
	x += lengthdir_x(8, dir);
	y += lengthdir_y(8, dir);
	motion_add(dir,4+addspeed);
}
instance_destroy();