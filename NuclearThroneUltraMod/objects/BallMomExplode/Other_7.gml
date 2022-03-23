/// @description xxx
BackCont.shake += 20
Sleep(50);
if sprite_index == sprFrogQueenDying
{
	sprite_index = sprFrogQueenDead;
	image_index = 0;
	snd_play(sndBallMamaDead2);
	var ang = random(360);
	var am = 80;
	var angStep = 360 / am
	repeat(am)
	{
		with instance_create(x,y,EnemyBullet2)
	    {
		    motion_add(am,4)
		    image_angle = direction
		    team = other.team
	    }
		am += angStep;
	}
}
else
{
	image_speed = 0;
	image_index = image_number - 1;
}