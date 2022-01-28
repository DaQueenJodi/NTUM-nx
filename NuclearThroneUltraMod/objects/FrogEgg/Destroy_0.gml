if my_health<1
snd_play(sndFrogEggDead)

repeat(4)
instance_create(x,y,ToxicThrowerGas)

snd_play(sndToxicBoltGas);

