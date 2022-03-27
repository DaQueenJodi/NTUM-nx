/// @description Init
maxhealth = 700;
disable = false;
size = 8;
meleedamage = 0;
raddrop = 0;
// Inherit the parent event
event_inherited();
alarm[1] = 0;
spr_idle = sprNothingLeft;
spr_hurt = sprNothingLeftHurt;
snd_hurt = sndNothingHurtHigh;
owner = -1;
xOffset = 0;
isLeft = true;
target = -1;

walk = 0;
spriteXscale = 1;
legXoffset = 0;
projectileSpeed = 6;
firerate = 7;
firerate -= (min(GetPlayerLoops(),5)*0.5);
maxAmmo = 8
ammo = maxAmmo;
//left side
gunangle[0] = 270;
gunangle[1] = 300;
gunangle[2] = 330;
gunangle[3] = 240;
angleI = 0;//random(array_length(gunangle)-1);
badboyBuff = 1;
loops = GetPlayerLoops()