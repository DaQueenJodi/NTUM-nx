maxhealth = 40
raddrop = 2
event_inherited();
meleedamage = 0
size = 2

event_inherited()

hidden = true;
spr_appear = sprTurretAppear;
spr_normal = sprTurretIdle;
spr_idle = spr_appear
spr_hurt = sprTurretHurt
spr_dead = sprTurretDead
sprite_index = spr_appear;
image_index = 0;
snd_hurt = sndTurretHurt
snd_dead = sndTurretDead
//behavior

gunangle = random(360)
alarm[1] = 90;
fireRate = 3;
maxAmmo = 8;
ammo = maxAmmo;
image_speed = 0;