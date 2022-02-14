/// @description pluto fx
if (isGettingSucked)
{
	with instance_create(x,y,PlutoFX)
	{
		motion_add(random(360),2);
		sprite_index = sprPluto;	
	}
}
alarm[2] = 2;