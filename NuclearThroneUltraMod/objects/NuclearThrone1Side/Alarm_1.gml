/// @description Tri shot
if disable
	exit;
if owner > -1 && owner.fireTriShot
{
	alarm[1] = firerate;
	if isLeft
		snd_play(sndNothingSmallball);
		
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
	if ammo <0
	{
		alarm[1] += firerate;
		angleI = irandom(array_length(gunangle)-1)
		debug("angleI: ",angleI);
	}
}