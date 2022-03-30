scrDrop(50,50)

event_inherited()
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(object_index) == 1
with MusCont {
	audio_stop_sound(song)
	if instance_exists(Player) 
	{
		if Player.area == 4
			song = mus4;
		else if Player.area == 111 || Player.area == 115
			song = mus104;
	}
}