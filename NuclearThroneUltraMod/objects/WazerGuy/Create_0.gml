raddrop = 2
maxhealth = 80
meleedamage = 3
size = 2

event_inherited()

spr_idle = sprBuffMushroomIdle
spr_walk = sprBuffMushroomWalk
spr_hurt = sprBuffMushroomHurt
spr_dead = sprBuffMushroomDead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 12;
maxSpeed = 2.5;
acc = 0.6;
myLaser = -1;
laserDuration = 60;
tellTime = 20;
laserOffsetMax = 60;
laserOffset = 0;
angleStep = 1;
