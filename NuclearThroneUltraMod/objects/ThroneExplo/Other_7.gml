/// @description xxx
if sprite_index == sprNothingDeath
{
	image_speed = 0;
	if !instance_exists(SurvivalWave)
	with instance_create(x,y,Portal)
	{
		type = 4
		sprite_index = sprBigPortalSpawn;
	}
}