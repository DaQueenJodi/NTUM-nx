event_inherited()
instance_create(x,y,WallBreak);
var ang = direction;
var angStep = 360/10;
repeat(10)
{
	with instance_create(x,y,ElectroBall)
	{
		motion_add(ang,2)
		image_angle = direction
		originalDirection = direction;
		team=other.team;
	}
	ang += angStep;
}
with instance_create(x,y,ElectroBallSpawn)
{motion_add(direction + 180,1)
image_angle = direction}
BackCont.shake += 10;