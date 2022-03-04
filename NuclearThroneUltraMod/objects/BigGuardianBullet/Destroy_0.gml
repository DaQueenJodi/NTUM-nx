/// @description Spawn guardianBullet dead
snd_play(sndBigBallExplo);
with instance_create(x,y,ScorpionBulletHit)
{
	sprite_index = sprGuardianBulletHit;	
}
var canSpawn = true;
with Portal
{
	if type == 1 && !inverted
		canSpawn = false;
}
if canSpawn
{
	var loops = min(GetPlayerLoops(),3);
	var amount = 7 + loops;
	var angle = image_angle;
	var angleStep = 360/amount;
	repeat(amount)
	{
		var offset = 0;
		var pspd = 2;
		repeat(4 + loops)
		{
			if owner > -1 && instance_exists(owner)
				with instance_create(x+lengthdir_x(offset,angle),y+lengthdir_y(offset,angle),GuardianBulletSpawn)
				{
					motion_add(angle,pspd);
					image_angle = direction
					team = other.team
					owner = other.owner;
				}
		offset += 0.5;
		pspd+=0.5;
		}
		angle += angleStep;
	}
}
scrDrop(70,0);
scrRaddrop(2);