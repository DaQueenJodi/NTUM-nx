var al = array_length(UberCont.gamemodeOrder);
for (var i = 0; i < al; i++) {
	if (UberCont.gamemodeOrder[i] == UberCont.opt_gamemode)
		gamemodenr = i;
}
scrGameModes();
dailyDone = false;
//gamemodenr=UberCont.opt_gamemode//gamemodeOrder[UberCont.opt_gamemode]; TODO REVERSE MAPPING