/// @description Start wave
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	song = mus100b;
	with SurvivalWave
	{
		if UberCont.opt_gamemode == 25
			event_user(0);
		else
			event_user(1);
	}
	image_speed = 0.5;
}