scrDrop(100,100)

event_inherited()

repeat(5+irandom(6))
{
	with instance_create(x,y,RavenFeather)
		image_index = 5;
}

repeat(4+irandom(2))
{
	with instance_create(x,y,RavenFeather)
		image_index = 6
}

if !instance_exists(SurvivalWave)
	with MusCont
	{
		audio_stop_sound(song);
		song = musBossWin
		snd_play_2d(song)
		audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
		audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
		audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

	}