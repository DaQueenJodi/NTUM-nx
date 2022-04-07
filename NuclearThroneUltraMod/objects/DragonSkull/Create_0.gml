maxhealth = 80
size = 1
spr_idle = sprHotDrakeSkullIdleClosed;
spr_hurt = sprHotDrakeSkullHurtClosed;
spr_dead = sprHotDrakeSkullDead;

name = "ENTER?"

event_inherited()
shadowSprite = shd48;
snd_hurt = sndHitRock
instance_create(x,y,WallBreak);
instance_create(x,y+16,WallBreak);
instance_create(x+16,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x-16,y,WallBreak);
instance_create(x-16,y+16,WallBreak);
alarm[1] = 120
