if alarm[4]>0//boiling veins
{
instance_create(x+random(12)-6,y+random(12)-6,Smoke);
}

//Hammer head
if hammerheadcounter > 0
{
	var msk = mask_index;
	mask_index = mskWallBreak;
	if place_meeting(x,y,Wall)
	{
		nearWall = true;
		mask_index = msk;
		if place_meeting(x+hspeed,y+vspeed,Wall)
		{
			
			hammerheadtimer += 1;

			alarm[5]=12;//timer before hammerhead continuation stops
			
			if hammerheadtimer > 8
			{
				hammerheadcounter --;
				var debrisAmount = 4;
				var debrisMultiply = 2;
				if (hammerheadcounter > 0)
				{
					snd_play(sndHammerHeadProc);
					scrDrop(1,0.5);
				}
				else
				{
					snd_play(sndHammerHeadEnd);
					scrDrop(10,5);
					nearWall = false;
					debrisAmount += 2;
					debrisMultiply += 2;
				}
				instance_create(x,y,WallBreak);
				//More debris
				repeat(debrisAmount)
				with instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
					speed *= debrisMultiply;
				
				scrRaddrop(1);
			}
		}
	}
	else
		nearWall = false;
	
	mask_index = msk;
}