if instance_exists(ToxicBurst) || instance_exists(UltraToxicBurst)
timeout = 0
else
{
timeout += 1
if timeout > 1
{
audio_stop_sound(sndFlamerLoop)
snd_play(sndToxicBoltGas)
instance_destroy()
}
}

