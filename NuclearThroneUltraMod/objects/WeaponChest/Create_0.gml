curse = 0;
mediumchest = 0;
if isOneWeaponOnlyModes()
	oneweponly = true;
else
	oneweponly = false;

curse = scrDecideCurse();

event_inherited()

if curse = 1
sprite_index = sprCursedWeaponChest

if instance_exists(Player)
{
if (Player.ultra_got[25]==1)
    {
    mediumchest=1;
    }
}

scrWeapons()
wep=scrDecideWep(0, 4, curse)


    if (mediumchest==1)
    {
    //medium sprite
    if curse==1
    sprite_index=sprMediumCursedWeaponChest;
    else
    sprite_index=sprMediumWeaponChest;
    }
	else if oneweponly
	{
		sprite_index = sprWeaponChestReplaced;
		curse = 0;
	}

