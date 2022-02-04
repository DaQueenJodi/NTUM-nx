///TargetWepTypeForAmmoConsumption();
// /@description Take ammo from primary than if melee take from secondary otherwise take from other pools at random
///@param
function TargetWepTypeForAmmoConsumption(takePercentage){
	var wepType = wep_type[wep];
	if wepType == 0
	{
		wepType = wep_type[bwep]
	}
	if wepType == 0
	{
		var tryType = irandom_range(1,5);
		
		totalTries = 0;
		while(totalTries <=5 && wepType == 0)
		{
			var cost = typ_amax[tryType]*takePercentage;
			if (ammo[tryType] - cost > 0)
			{
				wepType = tryType;
			}
			else
			{
				tryType++
				totalTries++;
				if tryType > 5
					tryType = 1;
			}
		}
	}
	return wepType
}