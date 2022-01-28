raddrop = 4//original bandit 2
maxhealth = 2

if UberCont.loops>1
maxhealth=4;

meleedamage = 0
size = 1

event_inherited()

spr_idle = sprBanditInvertIdle
spr_walk = sprBanditInvertWalk
spr_hurt = sprBanditInvertHurt
spr_dead = sprBanditInvertDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
wkick = 0

