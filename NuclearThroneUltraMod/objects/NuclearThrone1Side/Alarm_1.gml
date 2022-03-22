/// @description Tri shot
if disable
	exit;
if owner > -1 && owner.fireTriShot && instance_exists(Player)
{
	alarm[1] = firerate;
	snd_play_2d(sndNothingFire,random_range(00,0.004),true,true,2);
		
	var angleStep = 20;
	var angle = gunangle[angleI] - angleStep;
	if loops > 0
	{
		var proj1 = ExploGuardianBullet;
		var proj2 = ExploGuardianSquareBullet;
		if (ammo % 2 == 0)
		{
			proj2 = ExploGuardianBullet;
			proj1 = ExploGuardianSquareBullet;
		}
		with instance_create(x,y,proj1)
		{
			motion_add(angle,other.projectileSpeed);
			image_angle = direction
			team = other.team
		}
		angle += angleStep;
		with instance_create(x,y,proj2)
		{
			motion_add(angle,other.projectileSpeed);
			image_angle = direction
			team = other.team
		}
		angle += angleStep;
		with instance_create(x,y,proj1)
		{
			motion_add(angle,other.projectileSpeed);
			image_angle = direction
			team = other.team
		}
	}
	else
	{
		repeat(3)
		{
			with instance_create(x,y,ExploGuardianBullet)
			{
				motion_add(angle,other.projectileSpeed);
				image_angle = direction
				team = other.team
			}
			angle += angleStep;
		}
	}
	ammo -= 1;
	if ammo < 0
	{
		alarm[1] += firerate;
		ammo = maxAmmo;
		angleI = irandom(array_length(gunangle)-1)
	}
}