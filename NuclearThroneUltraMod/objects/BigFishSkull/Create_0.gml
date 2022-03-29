maxhealth = 100
size = 2

spr_idle = sprBigFishSkullOpen
spr_hurt = sprBigFishSkullOpenHurt
spr_dead = sprBigFishSkullDead


event_inherited()
shadowSprite = shd32;

snd_hurt = sndHitRock
alarm[1]=900//33 sec 900

instance_create(x,y,WallBreak);