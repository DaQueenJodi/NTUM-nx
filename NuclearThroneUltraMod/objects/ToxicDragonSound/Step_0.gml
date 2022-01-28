if instance_exists(ToxicDragonBurst)
timeout = 0
else
{
timeout += 1
if timeout > 1
{
audio_stop_sound(sndDragonLoop)
snd_play(sndToxicBoltGas)
instance_destroy()
}
}

