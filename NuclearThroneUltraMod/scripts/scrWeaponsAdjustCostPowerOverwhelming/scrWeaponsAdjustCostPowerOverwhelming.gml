///scrWeaponsAdjustCostPowerOverwhelming();
// /@description
///@param
function scrWeaponsAdjustCostPowerOverwhelming(){
	var maxRad = 40;//what 55 energy would cost in rads. or 255 bullets
	for (var i = 0; i < maxwep; i++) {
		if wep_cost[i] > 0 && wep_type[i] != 0
		{
			if wep_type[i] == 1
			{
				var pc = wep_cost[i]//Previous cost
				var cp = wep_cost[i]/255; //cost percentage
				var np = wep_cost[i]*0.5;
				if pc != np
				{
					//If the cost is the same then dont change it
					wep_cost[i] = np;
					wep_rad[i] += maxRad * cp;
				}
			}
			else
			{
				var pc = wep_cost[i]//Previous cost
				var cp = wep_cost[i]/55; //cost percentage
				var np = wep_cost[i]*0.5
				if pc != np
				{
					//If the cost is the same then dont change it
					wep_cost[i] = np;
					wep_rad[i] += maxRad * cp;
				}
			}
		}
	}
}