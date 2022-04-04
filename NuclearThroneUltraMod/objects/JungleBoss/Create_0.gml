raddrop = 100
maxhealth = 360
meleedamage = 0
size = 6;

event_inherited()

spr_idle = sprBushBox
spr_walk = sprBushBoxWalk
spr_hurt = sprBushBoxHurt
spr_dead = sprBushBoxDead

snd_hurt = sndHitPlant
snd_dead = sndJungleAssassinDead

//behavior
snd_play(sndAssassinPretend);
walk = 0
alarm[1] = 30;
alarm[2] = 5;
maxChargeSpeed = 12;
firstTime = true;
maxSpeed = 2;
acc = 2;
startSpeed = 6;
chargeDirection = 45;
chargeDuration = 30;
tellTime = 10;
image_xscale = 1;
spawnList[0] = JungleAssassin;
spawnList[1] = JungleBandit;
spawnList[2] = JungleFly;
spawnAmount[0] = 2;
spawnAmount[1] = 2;
spawnAmount[2] = 1;
activeMeleDamage = 5;
halfHealth = false;
actTime = 12;
