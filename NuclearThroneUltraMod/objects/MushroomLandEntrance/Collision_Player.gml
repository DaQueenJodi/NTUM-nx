/// @description Go to Vulcano
if other.wepmod1 != 0
{
	
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		snd_play(other.snd_thrn);
		with other
		{
			wepmod4 = wepmod3;
			wepmod3 = wepmod2;
			wepmod2 = wepmod1;
			wepmod1 = 0;
			area = 117
			subarea = 0
		}
		snd_play(sndUltraGrenadeSuck);
		with instance_create(x,y,Portal)
			type = 1
	}
}