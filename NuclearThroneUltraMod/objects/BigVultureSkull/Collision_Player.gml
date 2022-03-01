/// @description Go to banditland
if spr_idle == sprBigVultureSkullOpen
{
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
	snd_play(other.snd_thrn);

	with other
	{
		area = 10
		subarea = 0
	}

	with enemy
		my_health = 0

	with instance_create(x,y,Portal) type = 1

	spr_idle = sprBigVultureSkull;
	spr_hurt = sprBigVultureSkullHurt;

	}
}