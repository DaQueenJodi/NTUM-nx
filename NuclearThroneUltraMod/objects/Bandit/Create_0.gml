raddrop = 2
maxhealth = 4
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprBanditIdle
spr_walk = sprBanditWalk
spr_hurt = sprBanditHurt
spr_dead = sprBanditDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

