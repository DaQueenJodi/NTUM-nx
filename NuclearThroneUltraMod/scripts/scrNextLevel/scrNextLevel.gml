/// @description areas regular
function scrNextLevel() {
	if UberCont.opt_gamemode == 25//Survival
	{
		area = 116;
		subarea ++;
		hard+=1.25;
		exit;
	}

	if area = 104//YV CRIB
	{
		area=lastarea;
		if subarea==1&&area!=8//LAST AREA
			area+=1;
	}
	//show_message("inverted: "+ string(inverted)+"#area :"+string(area));

	if area < 100
	{
		lastarea = area
	}
	else if subarea = 1 || area = 105 || area = 106 || area = 107 || area = 101 || area = 110 || area = 111 || area = 112 || area = 103 || area = 109 || area = 113 || area == 114 || area = 108 || area == 115
	{
	    if area = 113 && subarea=2//banditland
	    {
	        area = 8//chesire cat
	        subarea=3;
	        exit;
	    }
		//Jungle
		if area == 114 && subarea = 2
		{
			area = 5;
			subarea = 3;
			exit;
		}

	    if area = 103
	    {
	        if subarea=1
	        {
	        subarea++;
	        }
	        else// if subarea=2
	        {
	        area = 3
	        subarea=2;
	        }
	    }

	    if area = 102 || area = 105//bring to scrapyard
	    {
	        if inverted && area = 105 &&subarea<3
	        {
	        //inverted big bandit
	        area = 105
	        subarea=3;
	        inverted=false;
	        exit;
	        }
	        else
	        {
	        area = 3
	        subarea = 1
			inverted=false
	        exit;
	        }
        
        
	    }
    
	    if area = 106//inverted scrapyard
	    {
	        if inverted && subarea<3
	        {
	        //inverted big dog
	        area = 106
	        subarea = 3;
	        inverted=false;
	        exit;
	        }
	        else if subarea < 2
	        {
	        area=3;
	        subarea=3;
			inverted=false
	        exit;
	        }
	        else
	        {
	        area=4;
	        subarea=1;
			inverted=false
	        exit;
	        }
    
	    }
    
	    if area = 107//inv frozen citybring to lill cunter
	    {
	        if inverted && subarea<3
	        {
	        //inverted lil hunter
	        area = 107
	        subarea = 3;
	        inverted=false;
	        exit;
	        }
	        else if subarea<2
	        {
	        area=5;
	        subarea=3;
			inverted=false
	        exit;
	        }
	        else
	        {
	        area=6;
	        subarea=1;
			inverted=false
	        exit;
	        }
    
	    }
    
	    if area = 108//inv vulcano bring to dragon
	    {
	        if inverted && subarea<2
	        {
	        //inverted purple dragon
	        area = 108
	        subarea = 2;
	        inverted=false;
	        exit;
	        }
	        else if subarea<2
	        {
	        area=7;
	        subarea=2;
	        inverted=false;
	        exit;
	        }
	        else
	        {
	        area=8;
	        subarea=1;
			inverted=false
	        exit;
	        }
    
	    }
    
	    if area = 109//inv wonderland bring to cheshire cat
	    {
	        if inverted && subarea<2
	        {
	        //inverted chesire cat
	        area = 109
	        subarea = 3;
	        inverted=true;
	        exit;
	        }
	        else if subarea<2
	        {
	        area=8;
	        subarea=3;
			inverted=false
	        exit;
	        }
	        else
	        {
	        area=9;
	        subarea=1;
			inverted=false
	        }
        
	    }
    
	    if area = 110//inv sewers bring from sewers to mansion?
	    {
	    area=103;
	    subarea=2;
	    lastarea=3;
    
	    inverted=false;
	    exit;
	    }
    
	    if area = 111//inv crystal cavesbring from caves to lil hunter
	    {
    
	    area=5
	    subarea=3;
    
	    inverted=false;
	    exit;
	    }
    
	    if area = 112//inv labs bring from labs to dragon
	    {
	    if inverted && subarea<2
	        {
        
	        area = 112
	        subarea = 2;
	        inverted=false;
	        exit;
	        }
	        else if subarea<2
	        {
	        area=6;
	        subarea=2;
			inverted=false
	        exit;
	        }
	        else
	        {
	        area=7
	        subarea=1;
			inverted=false
	        }
    
	    }

	    if area=101 && subarea=2
	    {
	    area=107;
	    subarea=1;
	    oasis=false
	    hard+=3;
	    exit;
	    }
	    else if area=101
	    hard+=2;
		
		//Cursed caves
		if area == 115
		{
			area = 5;
			subarea = 0;
		}

	}
	if ( subarea < 3 and area != 2 and area != 4/* and area != 6 */and area != 105 and area != 106  && !(area = 6 && subarea > 1) )&&!(area=7&&subarea=2)
		subarea += 1
	else if area < 100// && area=2 && area=4
	{
		if area < 9
		{
		    if inverted=false
		    {
				if area == 3 && (curse || bcurse || ccurse)
				{
					area = 115;	
					subarea = 1;
				}
				else if area == 6 && subarea == 2
				{
					area = 9;
					subarea = 1;
				}
				else
				{
				    area += 1
				    subarea = 1
				}
		    }
		}
		else if area == 10
		{
			area = 7;
			subarea = 0;
			inverted = true;
		}
		else//WE LOOP HERE!
		{
		looping=true;
		}
	}    
	//TO INVERTED AREAS
	if ( area=1 && inverted )//inv desert
	{area=105
	lastarea=105;
	}

	if ( area=1 && oasis )
	{area=101;
	subarea=1;}

	if ( area=3 && inverted )//inv scrap
	{area=106;
	lastarea=106;
	}//in case of crownvault

	if ( area=4 && inverted )//inv crystal caves
	{area=111;
	subarea=1;
	lastarea=5;}//in case of crownvault

	if ( area=5 && inverted )//inv frozen city
	{area=107;
	lastarea=107;
	}//in case of crownvault

	if ( area=6 && inverted )//inv labs
	{area=112;
	subarea=1;
	lastarea=7;}//in case of crownvault

	if ( area=7 && inverted )//inv vulcano
	{area=108;
	subarea=1;
	lastarea=7;}//in case of crownvault

	if ( area=8 && inverted )//inv wonderland
	{area=109;
	lastarea = 109}//in case of crownvault

	if ( area=2 && inverted )//inv sewers
	{area=110;
	subarea=1;
	lastarea=3;}


	if race=6||race=12{//Yv's Crib? Yun cuz aswell
	if level>=10
	{
	    if /*(ultra_got[21]||ultra_got[22]||ultra_got[23]||ultra_got[24])&&*/(visitedCrib==false)
	    {
	    area=104;
	    visitedCrib=true;
	    hard -= 1;
	    }
	}
	}
	debug("area end : ",area);

	if (area=105 || area=106|| area=107 || area = 108 || area = 109 | area = 110 || area = 111 || area = 112)&&subarea<2//inverted curse
	{
		hard+=1.5
	}
	else if area == 10
		hard += 1.5
	else if (!(area = 7 && subarea == 1) && !(area = 5 && subarea == 1))//Labs 1 and Vulcano 1 don't increase hard
		hard += 1




}
