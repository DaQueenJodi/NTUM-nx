/// @description splinter 2
with instance_create(x,y,Splinter)
{
	motion_add(other.ang+180,20);
	image_angle = direction
	team = other.team
}

snd_play(sndSplinterGun,0.2,true,true,1);
alarm[2] = 2;