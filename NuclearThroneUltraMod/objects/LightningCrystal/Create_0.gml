raddrop = 25
maxhealth = 45
meleedamage = 20
size = 2

event_inherited()

spr_idle = sprLightningCrystalIdle
spr_walk = sprLightningCrystalIdle
spr_hurt = sprLightningCrystalHurt
spr_dead = sprLightningCrystalDead
spr_fire = sprLaserCrystalFire


snd_hurt = sndLaserCrystalHit
snd_dead = sndLaserCrystalDeath

//behavior
ammo = 4
gunangle = random(360)
alarm[1] = 30+random(90)

