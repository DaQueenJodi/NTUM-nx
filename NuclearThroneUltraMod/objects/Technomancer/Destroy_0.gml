scrDrop(100,0)
scrDrop(50,1)
speed = 0;
event_inherited()

debug("LEFT OVER:",instance_number(myKind));
if instance_number(myKind) < 2 && !instance_exists(SurvivalWave) && !instance_exists(WantBoss)
{
	with MusCont
    {
		audio_stop_sound(song);
		if instance_exists(Player) 
		{
			if Player.area == 6
				song = mus6;
			else if Player.area == 112
				song = mus106b;
		}
	}
}
else if instance_number(myKind) == 2
{
	with myKind
	{
		snd_dead = sndTechnomancerDead;
		spr_dead = sprTechnoMancerLastDead;
	}
	
}