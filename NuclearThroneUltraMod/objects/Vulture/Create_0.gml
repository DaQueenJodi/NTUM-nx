raddrop = 6
maxhealth = 12
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprVultureIdle
spr_eat = sprVultureEat;
spr_walk = sprVultureWalk
spr_hurt = sprVultureHurt
spr_dead = sprVultureDead

snd_hurt = sndVultureHurt
snd_dead = sndVultureDeath

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

corpseTarget = -1;
projectileSpeed = 5.5;
projectileSpeed += clamp(GetPlayerLoops(),0,3);
alarm[2] = 1;