if instance_exists(SurvivalWave)
	exit;
if instance_number(enemy) == (instance_number(IDPDVan))
{
if instance_number(becomenemy) = 0 and !instance_exists(Menu) and !instance_exists(RadMaggotChest) and !instance_exists(BecomeScrapBoss) and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(UltraIcon)
{
	if instance_exists(Player)
	{
	    if !instance_exists(Portal)
	    {
	        if !instance_exists(CrownPickup)
	        {
				if instance_exists(Portal)
				{
					dir = instance_furthest(Portal.x,Portal.y,Floor);
				}
				else
				{
					dir = instance_nearest(x-16,y-16,Floor)
				}
		        with instance_create(dir.x+16,dir.y+16,Portal)
					type = 1
        
		        instance_create(dir.x+16,dir.y+16,WallBreak);
        
		        Sleep(50)
	        }
	    }//can only spawn 1 portal in inverted worlds
	    else if Player.area!=105 && Player.area!=110 && Player.area!=106 && Player.area!=111 && Player.area!=107 && Player.area!=112 && Player.area!=108 && Player.area!=109
	    {
	        with Portal
	        {
				if inverted=false
				{other.canspawnportal=false;}
	        }
        
	        if Portal.inverted=true&&canspawnportal=true
	        {
				if instance_exists(Portal)
				{
					dir = instance_furthest(Portal.x,Portal.y,Floor);
				}
				else
				{
					dir = instance_nearest(x-16,y-16,Floor);
				}
	        with instance_create(dir.x+16,dir.y+16,Portal)
	        type = 1
        
	        instance_create(dir.x+16,dir.y+16,WallBreak);
        
	        Sleep(50)
	        with Corpse
	        canspawnportal=false;
	        }
	    }
	}
    else if !instance_exists(Portal) && instance_exists(Floor)
    {
        if !instance_exists(CrownPickup)
        {
			if instance_exists(Portal)
			{
				dir = instance_furthest(Portal.x,Portal.y,Floor);
			}
			else
			{
				dir = instance_nearest(x-16,y-16,Floor);
			}
	        with instance_create(dir.x+16,dir.y+16,Portal)
	        type = 1
        
	        instance_create(dir.x+16,dir.y+16,WallBreak);
        
	        Sleep(50)
        }
    }
}
}

