function scrUnlockBSkin(raceIndex, unlockText, requiredGamemode) {
	//GAMEMODE UNLOCKABLE raceIndex=gamemode
	//raceIndex,unlock requirement, gamemode
	if (UberCont.race_bskin[raceIndex] == 0 && (UberCont.opt_gamemode==requiredGamemode || 
	(requiredGamemode == 0 && isValidGamemodeToUnlock(UberCont.gamemode) )))//Crown start and hunter marked only can unlock shit
	{
	UberCont.race_bskin[raceIndex]=1

	with instance_create(x,y,UnlockPopup)
	{
	mytext=UberCont.race_name[raceIndex]+"#B-SKIN UNLOCKED#"
	+unlockText;
	}

	with UberCont
	scrSave();
	}



}
