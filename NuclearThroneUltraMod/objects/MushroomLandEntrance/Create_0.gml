maxhealth = 30
size = 1
spr_idle = sprMushroomStatue;
spr_hurt = sprMushroomStatueHurt;
spr_dead = sprMushroomStatueDead;

name = "SACRIFICE WEAPON MODS"

event_inherited()
snd_hurt = sndHitRock
instance_create(x,y,WallBreak);
instance_create(x,y+16,WallBreak);
instance_create(x+16,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x-16,y,WallBreak);
instance_create(x-16,y+16,WallBreak);
alarm[1] = 120

alarm[2]=900//30 seconds
closed = false;
