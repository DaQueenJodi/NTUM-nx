/// @description Big balls
if owner > -1 && instance_exists(Player)
{
	if owner.bigballs
	{
		snd_play_2d(sndNothingFire);
		with instance_create(x,y,BigGuardianBulletSpawn)
		{
			team = other.team
		}
		alarm[2] = (firerate*badboyBuff) * 15
	}
}