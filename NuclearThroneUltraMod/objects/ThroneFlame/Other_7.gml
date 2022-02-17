/// @description anim handle
if sprite_index == sprThroneFlameEnd
{
	if !instance_exists(NuclearThrone1)
	{
		instance_destroy();	
	}
	visible = false;
}
if sprite_index == sprThroneFlameStart
	sprite_index = sprThroneFlameIdle;