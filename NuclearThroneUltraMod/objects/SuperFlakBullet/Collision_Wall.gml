//snd_play(sndHitWall)
audio_stop_sound(sndHitWall)
audio_sound_pitch(sndHitWall,random_range(0.9,1.1))
audio_play_sound(sndHitWall,100,0)

instance_destroy()

