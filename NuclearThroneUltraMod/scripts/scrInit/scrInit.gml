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
	encrypted_data = {
		ctot_dailies_score_seed: [],
		ctot_dailies_score_score: [],
		dailies_score_day: [],
		ctot_dailies_race_seed: [],
		ctot_dailies_race_time: [],
		dailies_race_day: [],
	};
	scrLoadEncrypted();
}
