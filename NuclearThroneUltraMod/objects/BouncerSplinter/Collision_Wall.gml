if wallHits < 1
{
	wallHits ++;
	move_bounce_solid(true);
	image_angle = direction;
	speed += 2;
}
else if speed != 0
{
snd_play(sndBoltHitWall,0.1,true)
alarm[0] = 1;
move_contact_solid(direction,16)
instance_create(x,y,Dust)
image_index = 2
image_speed = 0;
}

