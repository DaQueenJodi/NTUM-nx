if instance_exists(TwoHeadedDragonBurst)//remove this later when beam gets a unique sound
{
timeout = 0
holdTime += 0.2;
	if holdTime > 6 && !audio_is_playing(sndDragonLoop)
	{
		snd_loop(sndDragonLoop)
	}
	else if !step2 && holdTime > 14
	{
		step2 = true;
		snd_play_2d(sndRocketFly);
	}
	else if !step3 && holdTime > 30
	{
		step3 = true;
		snd_loop(sndSnowBlowerLoop);
		snd_play_2d(sndUltraGrenadeSuck);
	}
}
else
{
timeout += 1
if timeout > 1
{
	audio_stop_sound(sndDragonLoop)
audio_stop_sound(sndSnowBlowerLoop)
snd_play_2d(sndFrostShot2);
snd_play_2d(sndDragonStop);
instance_destroy()
}
}

