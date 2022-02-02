function scrCompletionPercentage() {
	//scrGameModes();
	//scrRaces();
	//scrStartingWeapons();


	everything = 0;


	//gamemodes
	everything+=(maxgamemode)*6//21
	everything -= 6;//Final 100% unlock does not count

	//characters
	everything+=racemax*30;//characters are priority

	//bskins
	everything+=racemax*12;

	//cskins
	everything+=racemax*12;

	//golden weapons
	everything+=((maxstartwep-1)*(racemax-1));//Starting weapons only count as 1/4th unlock


	unlocked = 0;


	//gamemodes
	var countgamemode=1;
	repeat(maxgamemode)
	{
	if gamemode_have[countgamemode] = 1 && countgamemode != 17
		unlocked+=6

	countgamemode++;
	}

	//characters
	var countrace=1;

	repeat(racemax)
	{
	if race_have[countrace] = 1
	unlocked+=30//10 instead of 1 because these should count more into the completion shit

	countrace++;
	}
	//skins

	var countrace=1;

	repeat(racemax)
	{

	if race_bskin[countrace] = 1
	unlocked+=12

	countrace++;
	}
	var countrace=1;

	repeat(racemax)
	{

	if race_cskin[countrace] = 1
	unlocked+=12

	countrace++;
	}
	//Golden weapons
	var countrace=1;
	var countstartwep=1;
	var totalStartWeps = 0;
	repeat(racemax-1)
	{
	countstartwep=1;
	repeat(maxstartwep-1)
	{

	if start_wep_have[countstartwep,countrace] == 1
		unlocked+=1//starting weapons count less
	
	totalStartWeps++;
	countstartwep++;
	}
	countrace++;
	}
	var percentage;
	percentage=round( (unlocked/everything)*100 );
	if (percentage>=100)
	{//100% unlock!
		scrUnlockGameMode(17,"FOR UNLOCKING EVERYTHING!#CONGRATULATIONS! U R DA BEST! <3");
	}
	return percentage;
}
