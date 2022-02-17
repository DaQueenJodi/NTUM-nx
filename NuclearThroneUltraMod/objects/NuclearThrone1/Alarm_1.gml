/// @description intro step 2 first beam
sprite_index = sprNothingActivate;
mask_index = mskNothingActive;
event_user(5);
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