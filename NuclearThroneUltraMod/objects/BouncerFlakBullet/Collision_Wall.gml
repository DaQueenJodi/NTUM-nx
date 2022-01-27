//snd_play(sndBouncerHitWall)
audio_stop_sound(sndBouncerHitWall)
audio_sound_pitch(sndBouncerHitWall,random_range(0.6,1.4))
audio_play_sound(sndBouncerHitWall,100,0)
move_bounce_solid(true);
//instance_destroy()

