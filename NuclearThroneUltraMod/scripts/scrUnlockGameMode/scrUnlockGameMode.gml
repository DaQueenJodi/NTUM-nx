function scrUnlockGameMode(gm, unlockText) {
	//GAMEMODE UNLOCKABLE gm=gamemode
	if UberCont.gamemode_have[gm]=0 && isValidGamemodeToUnlock(UberCont.opt_gamemode)
	{
	UberCont.gamemode_have[gm]=1
	debug("unlock");
	with instance_create(x,y,UnlockPopup)
		mytext=UberCont.gamemode[gm]+ "#GAMEMODE UNLOCKED!#"+unlockText

	with UberCont
	scrSave();

	}
}
