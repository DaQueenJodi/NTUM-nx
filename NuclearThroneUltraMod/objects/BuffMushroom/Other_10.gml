/// @description Jawebreaker
scrTarget();
if target > 0 && instance_exists(target)
{
	wkick = 4
	var dir = point_direction(x,y,target.x,target.y);
	gunangle = dir;
	var odis = fireOffset;
	var xx = x + lengthdir_x(odis,dir+90);
	var yy = y + lengthdir_y(odis,dir+90);
	snd_play(sndEnemyFire,0.1,true);
	with instance_create(xx,yy,EnemyBullet1)
	{
		motion_add(dir,other.pSpeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(odis,dir-90);
	yy = y + lengthdir_y(odis,dir-90);
	with instance_create(xx,yy,EnemyBullet1)
	{
		motion_add(dir,other.pSpeed)
		image_angle = direction
		team = other.team
	}
	ammo --;
	if ammo > 0
	{
		alarm[2] = fireRate;
		alarm[1] += fireRate;
	}
	if walk > 0
	{
		walk ++;
		if ammo == round(maxAmmo*0.5)
			direction += 180;
	}
}
