if side = 1
side = 0
else
side = 1
if !instance_exists(Portal) && !sound_isplaying(sndFiretrap)
snd_play(sndFiretrap)
fire = 45
alarm[0] = 90

