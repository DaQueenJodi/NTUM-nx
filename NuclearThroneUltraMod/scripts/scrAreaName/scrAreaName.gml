///xxx();
// /@description
///@param
function scrAreaName(area,subarea,loops){
	var txt = string(area)+"_"+string(subarea)
	var upsideDown = false;
	if area == 10
	{
		txt = "1B_"+string(subarea);
	}
	else if area == 9
	{
		txt = "7_"+string(subarea);
	}
	if area > 99
	{
		txt = "???"
		switch (area)
		{
			case 105: //Inverted desert
				txt = "1_"+string(subarea);
				upsideDown = true;
			break;
			case 106: //Inverted scrapyard
				txt = "3_"+string(subarea);
				upsideDown = true;
			break;
			case 107: //Inverted frozen city
				txt = "5_"+string(subarea);
				upsideDown = true;
			break;
			case 108: //Inverted vulcano
				txt = "7_"+string(subarea);
				upsideDown = true;
			break;
			case 109: //Inverted wonderland
				txt = "8_"+string(subarea);
				upsideDown = true;
			break;
			case 110: //Inverted sewers
				txt = "2_"+string(subarea);
				upsideDown = true;
			break;
			case 111: //Inverted crystal caves
				txt = "4_"+string(subarea);
				upsideDown = true;
			break;
			case 112: //Inverted labs
				txt = "6_"+string(subarea);
				upsideDown = true;
			break;
		}
	}
	if loops>0
	{
		txt="L"+string(loops)+" "+txt;
	}
	return [txt,upsideDown];
}