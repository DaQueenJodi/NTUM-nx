/// @description FLY MAGGOT!
scrTarget()

snd_play(sndFlyFire);
with instance_create(x,y,EnemyBullet3)
	{motion_add(other.gunangle+(random(20)-10),14+random(2))
	image_angle = direction
	team = other.team}
if (target > 0)
{
	gunangle = point_direction(x,y,target.x,target.y);
}
ammo --;
if ammo >0
{
	alarm[2] = 2;
	alarm[1] += 2;
}