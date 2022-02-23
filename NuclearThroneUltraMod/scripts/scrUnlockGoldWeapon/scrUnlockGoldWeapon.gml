function scrUnlockGoldWeapon() {
	/*save golden weapon*/
	if isValidGamemodeToUnlock(UberCont.opt_gamemode){//Don't save starting wep when you're playing one weapon only

	with UberCont
	{
	    if scrCheckGold(other.wep)||scrCheckGold(other.bwep)
	    {
    
	    if scrCheckAllGold()//does a char have all gold weps
			scrUnlockBSkin(6,"FOR UNLOCKING ALL GOLDEN WEAPONS#ON ONE CHARACTER",0);
    
	    if scrCheckOneGold()//do all characters have at least one golden weapon
	    scrUnlockCSkin(6,"FOR UNLOCKING ONE GOLDEN WEAPON#ON ALL CHARACTERS",0);
    
	    if Player.race=14 && Player.level!=1
	    scrUnlockBSkin(14,"FOR CONVERTING A GOLDEN WEAPON",0)
    
	    }    

	    if scrCheckGold(other.wep)
	    {
	    cwep[other.race] = other.wep 
    
	    if scrCheckStartingWepUnlocked(other.wep,other.race)
	    {
	    //start_wep_have[other.wep,other.race]=1;
    
	    with instance_create(x,y,UnlockPopup)
	    mytext=Player.wep_name[Player.wep]+ "#UNLOCKED!"
	    }
    
	    scrSave();
	    }
    
	    if scrCheckGold(other.bwep)
	    {
	    cwep[other.race] = other.bwep 
    
	    if scrCheckStartingWepUnlocked(other.bwep,other.race)
	    {
	    //start_wep_have[other.bwep,other.race]=1;//you now have it unlocked
    
	    with instance_create(x,y,UnlockPopup)
	    mytext=Player.wep_name[Player.bwep]+ "#UNLOCKED!"
	    }
    
	    scrSave();
	    }
	}

	}



}
