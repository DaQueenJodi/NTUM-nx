if other.team == 2 {
	aggression += 10;

	if alarm[2] > 0 {
		alarm[1] = -1;
		alarm[2] = -1;
		snd_play(sndAssassinDie);
		alarm[4] = 15;
		aggression = 0;
	}
}

event_inherited();
