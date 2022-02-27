function scrEndBoss() {
	//
	if instance_exists(Player)
	{
	if Player.ultra_got[79] && Player.loops>0// && Player.area=105 && Player.subarea=1
	{
	Player.skillpoints+=2;
	}


	with UberCont
	{

	if isValidGamemodeToUnlock(opt_gamemode) && opt_gamemode != 6
	{

	//in seconds
	var besttime = time_seconds+(time_minutes*60)+(time_hours*3600);
	var bestofall = true
	var dir= 1;

	repeat(racemax)
	{
	if besttime > cbst_time[dir]
	bestofall=false;
	dir++;
	}

	txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+microseconds;

	    if bestofall
	    {
    
	    cbst_time[Player.race] = besttime;
    
	    with instance_create(x,y,UnlockPopup)
	    {
			mytext="BEST TIME YET!!!"+other.race_name[Player.race]+"#"+other.txttime
	    }
    
	    scrSave();
	    }
	    else if besttime < cbst_time[Player.race]
	    {
    
	    cbst_time[Player.race]= besttime;
    
	    with instance_create(x,y,UnlockPopup)
	    {
	    mytext="BEST TIME FOR "+other.race_name[Player.race]+"#"+other.txttime
	    }
    
	    scrSave();
	    }
    
	}

	}
	}



}
