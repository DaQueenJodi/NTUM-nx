function scrUnlockGoldWeapon(target) {
	/*save golden weapon*/
	if isValidGamemodeToUnlock(UberCont.opt_gamemode){//Don't save starting wep when you're playing one weapon only
		with UberCont
		{
		    if scrCheckGold(target)
		    {
			    if scrCheckAllGold()//does a char have all gold weps
				{
					scrUnlockBSkin(6,"FOR UNLOCKING ALL GOLDEN WEAPONS#ON ONE CHARACTER",0);
				}
    
			    if scrCheckOneGold()//do all characters have at least one golden weapon
				{
					scrUnlockCSkin(6,"FOR UNLOCKING ONE GOLDEN WEAPON#ON ALL CHARACTERS",0);
				}
    
			    cwep[other.race] = target 
    
			    if target != 298 && scrCheckStartingWepUnlocked(target,other.race)
			    {
					with instance_create(x,y,UnlockPopup)
					mytext=Player.wep_name[Player.wep]+ "#UNLOCKED!";
					scrSave();

			    }
		    }
		}
	}
}
