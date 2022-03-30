if speed != 0
{
	snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
	speed = 0
	move_contact_solid(direction,16)
	instance_create(x,y,Dust)
	image_index = 3
	image_speed = 0;

	if alarm[0]<1
		alarm[0] = 15;
}

