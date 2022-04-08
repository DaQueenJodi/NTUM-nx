/// @description Start the vanman
with BackCont
{
	if (wantVanAmount < 1 || (Player.area == 9 && Player.subarea == 3) 
	|| Player.area == 100 || Player.area == 104)//Not vannable areas
	{
		exit;
	}
	else
	{
		alarm[2] = max(230,vanDelay+irandom(vanDelayRandom)+60);
	}
}
