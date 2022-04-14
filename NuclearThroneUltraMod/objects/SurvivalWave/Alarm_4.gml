/// @description Leave?

if instance_exists(Player)
{
	var cx = centerX;
	var cy = centerY;
	with enemy
	{
		if (point_distance(cx,cy,x,y) > 400)
		{
			my_health = 0;	
		}
	}
	if (point_distance(cx,cy,Player.x,Player.y) > 400)
	{
		with enemy
		{
			my_health = 0;
		}
		alarm[0] = 0;
		alarm[1] = 0;
		alarm[3] = 0;
		with MusCont
		{
			audio_stop_sound(song);
			song = mus100
			snd_loop(song);
		}
		snd_play_2d(Player.snd_lowh);
		with Floor
		{
			if styleb
			sprite_index = sprFloor100C;
			else
			sprite_index = sprFloor100;
		}
		with FloorExplo
		{
			sprite_index = sprFloor100Explo;	
		}
	}
	else
	{
		alarm[4] = 5;
	}
}
else if instance_exists(PlayerSpawn)
{
	alarm[0] += 1;
	alarm[3] += 1;
	alarm[4] = 5;
}
else
{
	alarm[0] = 0;
	alarm[3] = 0;
}