/// @description Go to banditland
if KeyCont.key_pick[other.p] = 1
{

	if blood >= bloodNeeded
	{
		KeyCont.key_pick[Player.p] = 2;

		with other
		{
			snd_play(snd_thrn);
			area = 114;
			subarea = 1;
		}

		with enemy
			my_health = 0

		with instance_create(x,y,Portal) type = 1

		instance_change(Wind,false)
	}
	else
	{
		blood ++;
		if blood >= bloodNeeded
		{
			name = "ENTER?";	
		}
		with other
		{
			my_health --;
			snd_play(snd_hurt);
			sprite_index = spr_hurt;
			image_index = 0;
		}
	}
}