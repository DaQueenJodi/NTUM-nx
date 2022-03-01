maxhealth = 50
size = 1
if UberCont.public == 0//Temp only for dev build
{
	spr_idle = sprBigVultureSkullOpen;
	spr_hurt = sprBigVultureSkullOpenHurt
}
else
{
	spr_idle = sprBigVultureSkull;
	spr_hurt = sprBigVultureSkullHurt;
}
spr_dead = sprBigFishSkullDead
name = "ENTER?"

event_inherited()
shadowSprite = shd48;
snd_hurt = sndHitRock
alarm[1]=350//15 sec 450
instance_create(x,y,WallBreak);
instance_create(x,y+16,WallBreak);
instance_create(x+16,y,WallBreak);
instance_create(x+16,y+16,WallBreak);
instance_create(x-16,y,WallBreak);
instance_create(x-16,y+16,WallBreak);
