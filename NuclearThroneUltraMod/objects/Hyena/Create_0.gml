raddrop = 6
maxhealth = 12
meleedamage = 2
size = 2

event_inherited()

spr_idle = sprHyenaIdle
spr_eat = sprHyenaEat;
spr_walk = sprHyenaWalk
spr_hurt = sprHyenaHurt
spr_dead = sprHyenaDead


snd_hurt = sndHyenaHurt
snd_dead = sndHyenaDeath
snd_mele = sndHyenaMelee
//behavior
walk = 0
alarm[1] = 30+random(90)
image_speed = 0.6;
corpseTarget = -1;
