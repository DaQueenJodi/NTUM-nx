raddrop = 4
maxhealth = 30
meleedamage = 3
size = 2

event_inherited()

spr_idle = sprFireWormIdle
spr_walk = sprFireWormIdle
spr_hurt = sprFireWormHurt
spr_dead = sprFireWormDead
spr_fire = sprFireWormFire;

snd_dead = sndFrogExplode

snd_hurt = sndBigMaggotHit
snd_mele = sndBigMaggotBite

//behavior
walk = 0
alarm[1] = 30+random(90)
actTime = 12;
maxSpeed = 2;
acc = 0.6;
myLaser = -1;
laserDuration = 64;
laserDirection = 0;
tellTime = 24;
laserOffsetMax = 30;
laserOffset = 0;
laserDir = 1;
angleStep = 1;
maxRange = 240;
lox = 16;//Laser offset X
instance_create(x,y,BigWallBreak);
isInverted = false;
