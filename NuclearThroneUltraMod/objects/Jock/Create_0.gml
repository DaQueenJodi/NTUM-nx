raddrop = 8
maxhealth = 25
meleedamage = 2
size = 2

event_inherited()

spr_idle = sprJockIdle
spr_walk = sprJockWalk
spr_hurt = sprJockHurt
spr_dead = sprJockDead
spr_fire = sprJockFire

snd_hurt = sndBanditHit
snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
ammo = 5

