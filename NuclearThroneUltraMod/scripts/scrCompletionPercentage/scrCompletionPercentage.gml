function scrCompletionPercentage() {
	//scrGameModes();
	//scrRaces();
	//scrStartingWeapons();


	everything = 0;


	//gamemodes
	everything+=(maxgamemode)*6//21

	//characters
	everything+=racemax*30;//characters are priority

	//bskins
	everything+=racemax*12;

	//cskins
	everything+=racemax*12;

	//golden weapons
	everything+=(maxstartwep*racemax);//Starting weapons only count as 1/4th unlock
	//everything-=racemax//Don't count the starting revolvers

	//Golden weapons
	/*var countrace=0;
	var countstartwep=0;

	repeat(racemax)
	{
	countstartwep=0;
	repeat(maxstartwep)
	{

	everything+=0.25//starting weapons count less

	countstartwep++;
	}
	countrace++;
	}*/



	unlocked = 0;


	//gamemodes
	var countgamemode=1;

	repeat(maxgamemode)
	{
	if gamemode_have[countgamemode] = 1
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

	repeat(racemax)
	{
	countstartwep=1;
	repeat(maxstartwep)
	{

	if start_wep_have[countstartwep,countrace] = 1
	unlocked+=1//starting weapons count less

	countstartwep++;
	}
	countrace++;
	}
	/*everything-=racemax*0.25;//Don't count the first starting weapons for each character
	everything-=maxstartwep//dont count randoms starting weapons
	//everything-=10//dont count random as a character
	everything-=20;//Fish and Crystal are unlocked from the start
	everything-=1;//Normal gamemode

	//unlocked-=racemax*0.25;//Don't count the first starting weapons for each character
	unlocked-=20;//Fish and Crystal are unlocked from the start
	unlocked-=1;//Normal gamemode
	*/
	everything-=60;
	unlocked-=60;

	if (    ( (unlocked+1)/everything)*100>=100   )
	{//100% unlock!
	scrUnlockGameMode(17,"FOR UNLOCKING EVERYTHING!#CONGRATULATIONS! U R DA BEST! <3");
	}

	//everything-=7.75;

	var percentage;//part divided by total = %
	percentage=round( (unlocked/everything)*100 );

	//5.75=(unlocked/338.75)*100

	return percentage;




}
