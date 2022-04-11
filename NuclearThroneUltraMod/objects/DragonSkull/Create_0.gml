var loops = GetPlayerLoops();
maxhealth = 80 * clamp(loops*1.5,1,4)
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

alarm[2]=900 * clamp(loops*1.5,1,4)//30 seconds
closed = false;
