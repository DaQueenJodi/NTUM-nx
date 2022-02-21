if sprite_index = sprPortalSpawn
{
//instance_create(x,y,PortalShock);
if type = 1
{
sprite_index = sprPortal
if inverted
sprite_index = sprPortalInverted
}
if type = 3
sprite_index = sprProtoPortal
}
if sprite_index == sprBigPortalSpawn
{
	sprite_index = sprBigPortal;	
}
if sprite_index = sprPortalDisappear or sprite_index = sprProtoPortalDisappear or sprite_index = sprPortalInvertedDisappear || sprite_index = sprBigPortalDisappear
{
	var canRestart = false;
	with Player
	{
	reload = 0
	breload = 0
	if my_health >= 0
		canRestart = true;
	}
	audio_stop_sound(sndPortalLoop)
	if canRestart
	{
		room_restart()
		instance_destroy()
	}
	else
	{
		endgame = 100;	
	}
}

