if instance_exists(SnowDragonBurst)//remove this later when beam gets a unique sound
timeout = 0
else
{
timeout += 1
if timeout > 1
{
audio_stop_sound(sndSnowBlowerLoop)
snd_play(sndFrostShot2)
instance_destroy()
}
}

