/// @description Big balls
if owner > -1 && instance_exists(owner) && instance_exists(Player)
{
	if owner.bigballs
	{
		snd_play_2d(sndBigBallFire);
		if loops > random(3)
		{
			with instance_create(x,y,BigGuardianBulletSpawn)
			{
				typ = 3;
				sprite_index = sprBigGuardianSquareBulletSpawn;
				owner = other.id;
				team = other.team
			}
		}
		else
		{
			with instance_create(x,y,BigGuardianBulletSpawn)
			{
				owner = other.id;
				team = other.team
			}
		}
		alarm[2] = (firerate*badboyBuff) * 15
	}
}