raddrop = 50
maxhealth = 300
meleedamage = 5
size = 6;

event_inherited()
alarm[10] = 0;
spr_idle = sprBigBadBatIdle
spr_walk = sprBigBadBatIdle
spr_hurt = sprBigBadBatHurt
spr_dead = sprBigBadBatDead
spr_fire = sprBigBadBatFire;

snd_hurt = sndHitFlesh
snd_dead = sndFrogExplode
snd_melee = sndGoldScorpionMelee;

//behavior
alarm[1] = 30;
rotationSpeed = choose(2,-2);
speedUp = 4;
distanceToTarget = 132;
maxAmmo = 3;
ammo = maxAmmo;
fireRate = 8;
lp = 0.2;
spinAttackDuration = 50;
spinAttackDistance = 72;
pSpeedAccurate = 3;
pSpeedSpinny = 3;
pSpeedJawbreaker = 4.5;
fireOffset = 40;
laserDuration = 80;
laserOffset = 26;
myLasers = [];

image_xscale = 1;
actTime = 12;
scrTarget();
angle = random(360);
if target > 0
	angle = point_direction(target.x,target.y,x,y);
	
emitter = audio_emitter_create();
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);

wkick = 0;
