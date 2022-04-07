/// @description CATCH SHEEP BRING IT HOME
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	snd_play(sndSheep);
	if other.area != 8
	{
		persistent = true;
		snd_play(other.snd_thrn);
		with other
		{
			if area == 114
			{
				area = 8;
				subarea = 3;
			}
			else
			{
				area = 8;
				subarea = 2;
			}
		}
		with instance_create(x,y,Portal) 
			type = 1
	}
}
