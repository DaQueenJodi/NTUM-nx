/// @description Start the vanman
with BackCont
{
	if (wantVanAmount < 1 || (Player.area == 9 && Player.subarea == 3) 
	|| Player.area == 100)
	{
		exit;
	}
	else
	{
		alarm[2] = max(230,vanDelay+irandom(vanDelayRandom)+60);
	}
}
