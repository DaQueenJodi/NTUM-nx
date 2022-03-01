/// @description Eating FX
with instance_create(x,y,BloodStreak)
{
	vspeed = - 2 - random(6);
	hspeed = random_range(-4,4);
	image_angle = direction
}
if alarm[2] > 2
{
	alarm[3] = 2;
}