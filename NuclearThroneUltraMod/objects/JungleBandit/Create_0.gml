raddrop = 5
maxhealth = 9
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprJungleBanditIdle
spr_walk = sprJungleBanditWalk
spr_hurt = sprJungleBanditHurt
spr_dead = sprJungleBanditDead

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 20+random(90)
wkick = 0
maxAmmo = 5;
ammo = maxAmmo;
maxAmmo += min(GetPlayerLoops(),4);