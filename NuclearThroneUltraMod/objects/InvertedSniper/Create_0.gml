raddrop = 13
maxhealth = 4
meleedamage = 0
size = 1

if UberCont.loops>1
maxhealth=5;

event_inherited()

spr_idle = sprInvertedSniperIdle
spr_walk = sprInvertedSniperWalk
spr_hurt = sprInvertedSniperHurt
spr_dead = sprInvertedSniperDead



snd_hurt = sndSniperHit

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
gonnafire = 0
wkick = 0

