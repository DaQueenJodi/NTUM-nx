/// @description GASS
instance_create(x,y,WallBreak);
repeat(10)
{
	with instance_create(x,y,ToxicGas)
	{
		owner = other.owner;
	}
}