function scrUnlockCharacter(raceIndex, unlockText) {
	//GAMEMODE UNLOCKABLE raceIndex=gamemode
	if UberCont.race_have[raceIndex]=0 && isValidGamemodeToUnlock(UberCont.gamemode)
	{
	UberCont.race_have[raceIndex]=1

	with instance_create(x,y,UnlockPopup)
	{
	mytext=UberCont.race_name[raceIndex]+"#UNLOCKED#"
	+unlockText;
	}

	with UberCont
	scrSave();
	}



}
