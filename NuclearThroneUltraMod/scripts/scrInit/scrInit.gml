function scrInit() {
	//The next variables are not saved
	everything=0;
	unlocked=0;
	opt_gamemode=0;
	opt_gm1wep=1;
	opt_discs=6;
	opt_discdamage=2;
	
	//INIT DATA
	scrRaces();
	scrStartingWeapons();
	scrGameModes();
	scrCrowns();
	scrSkills();
	scrUltras();
	
	scrLoad()
	//Hey don't read this
	encrypted_data = {
		ctot_dailies_score_seed: [],
		ctot_dailies_score_score: [],
		dailies_score_day: [],
		ctot_dailies_race_seed: [],
		ctot_dailies_race_time: [],
		dailies_race_day: [],
		secrets: [false,false,false,false,false,false,false,false,false,false],
	};
	scrLoadEncrypted();
}
