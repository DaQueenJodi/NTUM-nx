raddrop = 22
maxhealth = 13
meleedamage = 5
size = 2



event_inherited()
spr_idle = sprCrabIdle
spr_walk = sprCrabWalk
spr_hurt = sprCrabHurt
spr_dead = sprCrabDead
spr_fire = sprCrabFire

snd_hurt = sndScorpionHit
snd_dead = sndScorpionDie
snd_mele = sndScorpionMelee

//behavior
ammo = 10
walk = 0
gunangle = random(360)
alarm[1] = 15+random(60)

