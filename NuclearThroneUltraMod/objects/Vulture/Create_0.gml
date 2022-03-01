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

snd_hurt = sndRavenHit
snd_dead = sndRavenDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0

corpseTarget = -1;
ammo = 5;
maxammo = 5;

alarm[2] = 1;