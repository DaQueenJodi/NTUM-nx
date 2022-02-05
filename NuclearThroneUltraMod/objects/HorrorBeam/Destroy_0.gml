/// @description dropRad
if dropRad && ammo == 0
{
	with instance_create(x,y,Rad)
	{motion_add(other.direction,other.speed)
	motion_add(random(360),3)
	repeat(speed)
	speed *= 0.9}
	with HorrorBeam
	{
		dropRad = false;	
	}
}
