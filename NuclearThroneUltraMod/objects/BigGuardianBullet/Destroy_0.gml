/// @description Spawn guardianBullet dead
snd_play(sndBigBallExplo);
with instance_create(x,y,ScorpionBulletHit)
{
	sprite_index = sprGuardianBulletHit;	
}

var loops = min(GetPlayerLoops(),4);
var amount = 7 + loops;
var angle = image_angle;
var angleStep = 360/amount;
repeat(amount)
{
	var offset = 0;
	var pspd = 2;
	repeat(4 + loops)
	{
	with instance_create(x+lengthdir_x(offset,angle),y+lengthdir_y(offset,angle),GuardianBullet)
	{
		motion_add(angle,pspd);
		image_angle = direction
		team = other.team
	}
	offset += 0.5;
	pspd+=0.5;
	}
	angle += angleStep;
}

scrDrop(40,0);
scrRaddrop(2);