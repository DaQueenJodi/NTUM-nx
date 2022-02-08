/// @description xxx
if !instance_exists(GenCont)
{
	with UberCont
	{
		wallsBroken += 1;
		if wallsBroken == 101
		{
			scrUnlockGameMode(20,"FOR BREAKING#MORE THAN 100 WALLS#IN ONE AREA")
		}
	}
}