if place_meeting(x,y,Floor)
{
//if other.id > id
instance_destroy()
}
else
{
	if !instance_exists(GenCont)
	{
		with UberCont
		{
			wallsBroken += 1;
			if wallsBroken == 301
			{
				scrUnlockGameMode(20,"FOR BREAKING#MORE THAN 300 WALLS#IN ONE AREA")
			}
		}
	}	
}
