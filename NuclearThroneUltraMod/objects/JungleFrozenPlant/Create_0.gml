maxhealth = 500
size = 1

spr_idle = sprIceFlowerIdle
spr_hurt = sprIceFlowerHurt
spr_dead = sprIceFlowerDead

event_inherited()

move_contact_solid(random(360),random(12))
if !place_free(x,y+12)
move_contact_solid(random(90)+45,random(12))

name = "FEED";
blood = 0;
bloodNeeded = 4;
if (instance_exists(Player))
{
	if Player.race == 4//Melting require a little less blood
	{
		bloodNeeded = 2;	
	} else if Player.race == 19//Skeleton also less HP so less blood needed
	{
		bloodNeeded = 3;	
	}
}
instance_create(x,y,WallBreak);