/// @description intro step 2 first beam
sprite_index = sprNothingActivate;
spr_idle = sprNothingActivate;
spr_hurt = sprNothingActivate;
//mask_index = mskNothingActive;
image_index = 1;
instance_create(x,y,ThronePipes);
meleedamage = 10;
alarm[2] = 90;
beamY = y;
repeat(8)
{
	with instance_create(x+random_range(32,-32),y,Debris)
	{
		vspeed = random_range(8,16);
		hspeed = random_range(-6,6);
	}
}
snd_play_2d(sndNothingStart);
snd_play_2d(sndNothingBeamStart);
snd_loop(sndNothingBeamLoop);
with instance_create(x,y+24,ThroneBeam)
{
	depth = other.depth - 1;
	team = other.team;
}
