/// @description intro step 2 first beam
sprite_index = sprNothingActivate;
spr_idle = sprNothingActivate;
spr_hurt = sprNothingActivate;
mask_index = mskNothingActive;
instance_create(x,y,ThronePipes);
alarm[3] = 30;
repeat(8)
{
	with instance_create(x+random_range(32,-32),y,Debris)
	{
		vspeed = random_range(8,16);
		hspeed = random_range(-6,6);
	}
}

snd_play(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
with instance_create(x,y+48,ThroneBeam)
{
	depth = other.depth - 1;
	team = other.team;
}
