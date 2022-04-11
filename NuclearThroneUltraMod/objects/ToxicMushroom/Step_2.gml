/// @description Gass on hit
if my_health < prevhealth
{
	repeat(2)
		instance_create(x,y,ToxicGas)
}
