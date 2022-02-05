function scrUnlockCSkin(raceIndex, unlockText, requiredGamemode) {
	if UberCont.race_cskin[raceIndex] == 0 && (UberCont.opt_gamemode == requiredGamemode || (requiredGamemode == 0 && isValidGamemodeToUnlock(UberCont.gamemode)))
	{
	UberCont.race_cskin[raceIndex]=1

	with instance_create(x,y,UnlockPopup)
	{
	mytext=UberCont.race_name[raceIndex]+"#C-SKIN UNLOCKED#"
	+unlockText;
	}

	with UberCont
	scrSave();
	}
}
