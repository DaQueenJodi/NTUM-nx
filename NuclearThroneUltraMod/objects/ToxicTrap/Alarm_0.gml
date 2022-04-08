if side = 1
side = 0
else
side = 1
if !instance_exists(Portal) && !sound_isplaying(sndToxicBoltGas)
snd_play(sndToxicBoltGas)
fire = 15//45
alarm[0] = 70//90

