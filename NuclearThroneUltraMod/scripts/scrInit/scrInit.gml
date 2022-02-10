function scrInit() {
	//The next variables are not saved
	everything=0;
	unlocked=0;
	opt_gamemode=0;
	opt_gm1wep=1;
	opt_discs=3;
	opt_discdamage=6;
	
	//INIT DATA
	scrRaces();
	scrStartingWeapons();
	scrGameModes();
	scrCrowns();
	scrSkills();
	scrUltras();
	
	scrLoad()
}
