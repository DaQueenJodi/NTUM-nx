/// @description BOUNCE
if hits > 0
{
	move_bounce_solid(true);
	image_angle = direction;
	speed = clamp(speed*2,6,24);
	snd_play(sndShotgunHitWall,0.1,true);
	instance_create(x,y,Smoke);
	hits--;
}
else if speed != 0
{
	snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
	speed = 0
	move_contact_solid(direction,16)
	instance_create(x,y,Dust)
}
