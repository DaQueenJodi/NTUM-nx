function scrDecideWep(wepTier, maxTries = 10, cursed = 0, minWepArea = 0) {
	if instance_exists(Player)
	{
		if UberCont.opt_gamemode=2{
		if Player.loops>0
		wep=choose(24,79,12,11,234,236,197,127,128);//E Sword, SPC, SuCros, Auto crossy, heavy auto, super heavy auto, dubble super plasma cannon,Eswordgun,SEswordgun
		else
		wep=choose(24,79,12,11);//E Sword, SPC, SuCros, Auto crossy

		}
		else {
			var maxAreaGoodEnough = 16;
			if Player.race = 8
			{
				wepTier += 1
				maxTries += 2;
			}
			if Player.ultra_got[29]==1
			{
				minWepArea = min(6,Player.hard+wepTier);
				maxTries += 10;
			}
			
			if (cursed) {
				wepTier += 2;
				maxTries += 5;
				//do wep = round(random(maxwep-1)+1)
				//until (wep_area[wep] > Player.hard+wepTier or Player.hard > 20) and wep_area[wep] <= Player.hard+wepTier+5 and wep_area[wep] and ((wep != Player.wep and wep != Player.bwep) or Player.race = 7)
			}
			else if instance_exists(Player)
			{
				if (wepTier == 17 || wepTier == 24 || wepTier == 30) && UberCont.start_wep_have_all[Player.race]//THE GOLDEN TIER(s)
				{
					return scrDecideWepGold();	
				}
			}
			var triesForSpecificTier = 0;
			var maxValidTierWep = 0;
			do {
				wep=irandom(maxwep-1)+1;
				if wep_area[wep]  <= Player.hard+wepTier && wep_area[wep] > wep_area[maxValidTierWep]
				{
					maxValidTierWep = wep;
				}
				triesForSpecificTier++;
			}
			until (
			(wep_area[wep] == Player.hard+wepTier || triesForSpecificTier > maxTries || wep_area[wep] >= maxAreaGoodEnough)
			&& wep_area[wep] >= minWepArea && wep_area[wep] <= Player.hard+wepTier
			&& ( (wep != Player.wep and wep != Player.bwep) || Player.race == 7/*roids can dual wield*/) 
			)
			//Found a higher option than our result? Take that one
			if (wep_area[maxValidTierWep] > wep_area[wep])
			{
				wep = maxValidTierWep;
			}
		}
	}
	else
	{
		do {
			wep = round(random(maxwep-1)+1);
		}
		until (wep_area[wep] != -1)
	}
	return wep;
}
