/// @description xxx
if sprite_index == sprNothingDeath
{
	image_speed = 0;

	with instance_create(x,y,Portal)
	{
		type = 4
		sprite_index = sprBigPortalSpawn;
	}
}