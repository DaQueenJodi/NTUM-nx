maxhealth = 30//35
raddrop = 4;
event_inherited();
meleedamage = 0
size = 2

event_inherited()

hidden = true;
spr_appear = sprTurretAppearInverted;
spr_normal = sprTurretIdleInverted;
spr_idle = spr_appear
spr_hurt = sprTurretHurtInverted;
spr_dead = sprTurretDeadInverted;
sprite_index = spr_appear;
image_index = 0;
snd_hurt = sndTurretHurt
snd_dead = sndTurretDead
//behavior

gunangle = random(360)
alarm[1] = 90;
fireRate = 2;
maxAmmo = 16;
ammo = maxAmmo;
image_speed = 0;