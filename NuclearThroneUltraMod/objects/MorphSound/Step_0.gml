if instance_exists(Ray)//remove this later when beam gets a unique sound
timeout = 0
else
{
timeout += 1
if timeout > 1
{
audio_stop_sound(sndMorphLoop)
snd_play(sndMorphStop)
instance_destroy()
}
}

