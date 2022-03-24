/// @description Eating FX
snd_play(choose(sndBigVultureEat1,sndBigVultureEat2,sndBigVultureEat3,sndBigVultureEat4));
with instance_create(x,y,BloodStreak)
{
	vspeed = - 2 - random(6);
	hspeed = random_range(-4,4);
	image_angle = direction
}
if alarm[2] > 2
{
	alarm[3] = 3;
}