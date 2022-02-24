/// @description Tri shot
if disable
	exit;
if owner > -1 && owner.fireTriShot && instance_exists(Player)
{
	alarm[1] = firerate;
	snd_play_2d(sndNothingSmallball,random_range(00,0.004),true,true,2);
		
	var angleStep = 20;
	var angle = gunangle[angleI] - angleStep;
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
	ammo -= 1;
	if ammo < 0
	{
		alarm[1] += firerate;
		ammo = maxAmmo;
		angleI = irandom(array_length(gunangle)-1)
		debug("angleI: ",angleI);
	}
}