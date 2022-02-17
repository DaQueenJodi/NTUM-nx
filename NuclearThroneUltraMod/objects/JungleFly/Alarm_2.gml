/// @description FLY MAGGOT!
scrTarget()

snd_play(sndFlyFire);
with instance_create(x,y,Maggot)
{
	raddrop = 0;
	motion_add(other.gunangle+(random(28)-14),6)
	image_angle = direction
	team = other.team
	charge = true;
	alarm[1] = 0;
}
if (target > 0)
{
	gunangle = point_direction(x,y,target.x,target.y);
	direction = gunangle;
}
ammo --;
if ammo > 0
{
	alarm[2] = 2;
	alarm[1] += 5;
	speed --;
}