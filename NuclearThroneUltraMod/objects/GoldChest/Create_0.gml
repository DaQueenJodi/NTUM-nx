scrWeapons()
wep = scrDecideWepGold()
aditionalwep = 0;
while (wep == 315)
{
	aditionalwep = 315;
	wep = scrDecideWepGold()
}
//If you don't have the pig yet give em a money gun yo fukc da grind!
if aditionalwep != 315
{
	if UberCont.race_have[20] == 0
	{
		aditionalwep = 315;
	}
}
if instance_exists(Player)
{if random(4) < Player.nochest
instance_change(BigWeaponChest,true)
}
event_inherited()
curse = 0

