/// @description Wazer
wkick = 4
myLaser = instance_create(x,y,EnemyWazer);
laserOffset = laserOffsetMax;
angleStep = (laserOffsetMax*2) / (laserDuration - tellTime)
var dir = point_direction(x,y,target.x,target.y)-laserOffset;
alarm[2] = laserDuration;
with myLaser {
	team = other.team;
	alarm[0] = other.laserDuration;
	owner = other.id;
	camKick = 0;
	camShake = 1;
	wkick = 4;
	image_angle = dir;
}
walk = 0;
alarm[1] = laserDuration+10;
