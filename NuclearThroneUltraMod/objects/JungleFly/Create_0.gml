raddrop = 10
maxhealth = 40
meleedamage = 1
size = 2

event_inherited()

spr_idle = sprJungleFlyIdle
spr_walk = sprJungleFlyWalk
spr_hurt = sprJungleFlyHurt
spr_dead = sprJungleFlyDead

snd_hurt = sndFlyHurt
snd_dead = sndFlyDead;
snd_melee = sndFlyMelee;
//behavior
gunangle = random(360)
alarm[1] = 20+random(90)
wkick = 0
maxAmmo = 6;
ammo = maxAmmo;
maxAmmo += min(GetPlayerLoops(),4);
run = 0;