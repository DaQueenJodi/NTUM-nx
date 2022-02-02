///HogSpend();
// /@description
function HogSpend(){
	var maxRad = 0;
	with Player {
		maxRad = GetPlayerMaxRad();	
	}
	var calcCost = maxRad * cost;
    if (Player.rad-calcCost>=0)
    {
		Player.rad-=calcCost;
	    with instance_create(x,y,PopupText)
	    mytext = "-"+string(other.cost*100)+"% RADS";
		return true;
	}
	else
	{
		with instance_create(x,y,PopupText)
			mytext = "NOT ENOUGH RADS";
	}
	return false;
}