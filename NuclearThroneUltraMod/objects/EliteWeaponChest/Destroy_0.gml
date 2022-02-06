with instance_create(x,y,ChestOpen)
{
	if other.oneweponly
	{
		sprite_index = sprWeaponChestReplacedOpen;
	}
	else if other.curse > 0
	{
		sprite_index = sprCursedEliteWeaponChestOpen;	
	}
	else
	{
		sprite_index = sprEliteWeaponChestOpen;
	}
}

instance_create(x,y,FXChestOpen)

scrChestOasis();