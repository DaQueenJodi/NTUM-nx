if wallHits < 1
{
	wallHits ++;
	move_bounce_solid(true);
	image_angle = direction;
	speed += 2;
	if !audio_is_playing(sndSpark1)&&!audio_is_playing(sndSpark2)
	snd_play(choose(sndSpark1,sndSpark2))
	with instance_create(x,y,Lightning)
	{
		image_angle = other.image_angle+choose(60,-60);
		accuracy=0;
		team = other.team
		ammo = 8;
		event_perform(ev_alarm,0)
		visible = 0
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
}
else if speed != 0
{
snd_play(sndBoltHitWall,0.1,true,true,1,false,true,0.76)
alarm[0] = 1;
move_contact_solid(direction,16)
instance_create(x,y,Dust)
image_index = 2
image_speed = 0;
}

