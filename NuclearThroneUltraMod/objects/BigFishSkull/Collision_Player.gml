/// @description Loop oasis
if loops > 0 && spr_idle = sprBigFishSkullOpen
{
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		snd_play(other.snd_thrn);

		with other
		{
			area = 101
			subarea = 0
		}

		//with enemy
		//	my_health = 0
		spr_idle = sprBigFishSkull;
		spr_hurt = sprBigFishSkullHurt;
		with instance_create(x,y,Portal) 
			type = 1

	}
}