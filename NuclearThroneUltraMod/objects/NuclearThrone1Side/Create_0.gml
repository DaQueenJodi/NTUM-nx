/// @description Init
maxhealth = 400;
disable = false;
size = 8;
meleedamage = 0;
// Inherit the parent event
event_inherited();
spr_idle = sprNothingLeft;
spr_hurt = sprNothingLeftHurt;
snd_hurt = sndNothingHurtHigh;
owner = -1;
xOffset = 0;
isLeft = true;

walk = 0;
spriteXscale = 1;
legXoffset = 0;
projectileSpeed = 6;
firerate = 6;
maxAmmo = 8
ammo = maxAmmo;
gunangle[0] = 270;
gunangle[1] = 240;
gunangle[2] = 300;
angleI = random(array_length(gunangle)-1);