raddrop = 13
maxhealth = 70
meleedamage = 0
size = 2

event_inherited()

spr_idle = sprGoldenSnowTankIdle
spr_walk = sprGoldenSnowTankWalk
spr_hurt = sprGoldenSnowTankHurt
spr_dead = sprGoldenSnowTankDead

snd_hurt = sndGoldTankHurt
snd_dead = sndGoldTankDead

//behavior
alarm[1] = 30+random(10)
ammo = 0
gunangle = random(360)
rest = 0
wave = 0

isLoop = GetPlayerLoops() > 0