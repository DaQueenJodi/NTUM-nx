function scrDecideWep(wepTier, maxTries = 4) {
	if instance_exists(Player)
	{
		if UberCont.opt_gamemode=2{
		if Player.loops>0
		wep=choose(24,79,12,11,234,236,197,127,128);//E Sword, SPC, SuCros, Auto crossy, heavy auto, super heavy auto, dubble super plasma cannon,Eswordgun,SEswordgun
		else
		wep=choose(24,79,12,11);//E Sword, SPC, SuCros, Auto crossy

		}
		else{
			if Player.race = 8
			{
				wepTier += 1
				maxTries += 1;
			}
			if Player.ultra_got[29]==1
			{//DO UNTILL wep is above area 5 (3-1) REFINED TASTE
				maxTries += 5;
				var triesForSpecificTier = 0;
				do {
					wep=irandom(maxwep-1)+1;
					triesForSpecificTier++;
				}
				until (
				(wep_area[wep] == Player.hard+wepTier || triesForSpecificTier >= maxTries)
				&& wep_area[wep] != -1 && wep_area[wep] <= Player.hard+wepTier
				&& ( (wep != Player.wep and wep != Player.bwep) || Player.race == 7/*roids can dual wield*/)
				&& wep_area[wep] > 5
				)
			}
			else
			{
				var triesForSpecificTier = 0;
				do {
					wep=irandom(maxwep-1)+1;
					triesForSpecificTier++;
				}
				until (
				(wep_area[wep] == Player.hard+wepTier || triesForSpecificTier >= maxTries)
				&& wep_area[wep] != -1 && wep_area[wep] <= Player.hard+wepTier
				&& ( (wep != Player.wep and wep != Player.bwep) || Player.race == 7/*roids can dual wield*/) 
				)
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
