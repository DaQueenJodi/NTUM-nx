/// @description Damage
if team != other.team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			my_health -= other.dmg;
		}
	}
	instance_destroy();
}