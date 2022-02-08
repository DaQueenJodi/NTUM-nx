with instance_create(x,y,ChestOpen)
{
	if other.oneweponly
		sprite_index = sprWeaponChestReplacedOpen;
	else if other.curse = 1
	{
		if other.mediumchest
			sprite_index = sprMediumCursedWeaponChestOpen;
		else
			sprite_index = sprCursedWeaponChestOpen
	}
	else
	{
		if other.mediumchest
			sprite_index = sprMediumWeaponChestOpen;
		else
			sprite_index = sprWeaponChestOpen
	}
}
instance_create(x,y,FXChestOpen)

scrChestOasis();

