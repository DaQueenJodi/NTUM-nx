function scrCheckStartingWepUnlocked(argument0, argument1) {
	//run this in ubercont object
	var dir=0;
	repeat(maxstartwep+1)
	{


	//you have not unlocked this weapon?
	    if start_wep_have[dir,argument1]==0
	    {
	    //if that weapon is the one I am holding
	    if start_wep[dir]=argument0
	    {
	    //Unlock the gun!
	    start_wep_have[dir,argument1]=1;
    
	    return true;
	    }
    
	    }
	dir++;
	}
	return false;




}
