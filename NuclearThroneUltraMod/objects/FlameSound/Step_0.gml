if instance_exists(FlameBurst)||instance_exists(Ray)//remove this later when beam gets a unique sound
timeout = 0
else
{
timeout += 1
if timeout > 1
{
audio_stop_sound(sndFlamerLoop)
snd_play(sndFlamerStop)
instance_destroy()
}
}

