/// @description Start wave
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	with SurvivalWave
	{
		event_user(0);
	}
	image_speed = 0.5;
}