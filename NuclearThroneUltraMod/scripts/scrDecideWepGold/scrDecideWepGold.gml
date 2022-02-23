function scrDecideWepGold(argument0) {
	if instance_exists(Player)
	{
	if Player.race = 8
	argument0 += 1
	if Player.area!=103
	{
	do wep = choose(40,41,42,43,44,45,280,281,282,283,284,285,286,287,288,290)
	until ((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
	}
	else
	{//money gun can only be found in yv's crib
	do wep = choose(40,41,42,43,44,45,280,281,282,283,284,285,286,287,288,290,315)
	until ((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
	}

	}
	else
	wep = choose(40,41,42,43,44,45,280,281,282,283,284,285,286,287,288,290,315)
	
	return wep;
}
