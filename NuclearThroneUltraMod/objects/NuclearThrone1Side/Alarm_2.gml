/// @description Big balls
if owner > -1 && !disable
{
	if owner.bigballs
	{
		snd_play(sndNothingFire);
		with instance_create(x,y,BigGuardianBulletSpawn)
		{
			team = other.team
		}
		alarm[2] = firerate * 6
	}
}