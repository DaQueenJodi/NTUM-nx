if mode = 2
{
instance_destroy()
snd_play(sndRestart)
}
else
{
snd_play(sndRestart)
mode = 2
alarm[0] = 20
}

