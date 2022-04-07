/// @description Go to Vulcano
if other.wepmod1 != 0
{
	with other
	{
		wepmod1 = 0;
		wepmod2 = 0;
		wepmod3 = 0;
		wepmod4 = 0;
	}
	snd_play(sndUltraGrenadeSuck);
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		snd_play(other.snd_thrn);

		with other
		{
			area = 117
			subarea = 0
		}
		with instance_create(x,y,Portal)
			type = 1
	}
}