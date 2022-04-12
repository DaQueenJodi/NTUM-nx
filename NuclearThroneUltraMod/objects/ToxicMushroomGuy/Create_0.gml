raddrop = 14
maxhealth = 15
meleedamage = 2;
size = 1

event_inherited()

spr_idle = sprToxicMushroomGuyIdle
spr_walk = sprToxicMushroomGuyWalk
spr_hurt = sprToxicMushroomGuyHurt
spr_dead = sprToxicMushroomGuyDead

snd_hurt = sndHitPlant
snd_dead = sndFrogExplode
snd_mele = sndMaggotBite

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 17;

