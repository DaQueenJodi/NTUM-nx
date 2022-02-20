//event_inherited()
shadowSprite = shd24;
friction = 0.4
image_speed = 0
motion_add(random(360),2)
shadowSprite = shd24;

curse = 0;
wep = 0;
oneweponly = false;
if isOneWeaponOnlyModes()
{
	oneweponly = true;
	sprite_index = sprEliteWepChest;
	sprite_index = sprWeaponChestReplaced;
}
else
{
	curse = scrDecideCurse();
	if curse > 0
	{
		sprite_index = sprCursedEliteWeaponChest;
	}
}
scrWeapons()
wep=scrDecideWep(2, 200, curse)
//wep=scrDecideWepElite(2);