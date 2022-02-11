scrWeapons()
wep = scrDecideWepGold(1)
aditionalwep = 0;
while (wep == 315)
{
	aditionalwep = 315;
	wep = scrDecideWepGold(1)
}

if instance_exists(Player)
{if random(4) < Player.nochest
instance_change(BigWeaponChest,true)
}
event_inherited()
curse = 0

