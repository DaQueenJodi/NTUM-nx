function scrGameModes() {
	gamemode[0] = "NORMAL";//
	gamemode_unlock[0] = "UNLOCKED FROM START";
	gamemode_have[0] = 1;

	gamemode[1] = "ONE WEAPON ONLY";//
	gamemode_unlock[1] = "REACH WONDERLAND USING ONLY A REVOLVER";
	gamemode_have[1] = 0;

	gamemode[2] = "FAVOURABLE BUILD";//
	gamemode_unlock[2] = "PICK UP A FAVOURABLE WEAPON";
	gamemode_have[2] = 0;

	gamemode[3] = "NO HUD";//
	gamemode_unlock[3] = "KILL A THIEF";
	gamemode_have[3] = 0;

	gamemode[4] = "WALL IS LAVA";//
	gamemode_unlock[4] = "GET HURT BY LAVA";
	gamemode_have[4] = 0;

	gamemode[5] = "1HP EQUALITY";//
	gamemode_unlock[5] = "TAKE MELTING ULTRA:#BRAIN CAPACITY";
	gamemode_have[5] = 0;

	gamemode[6] = "CLAUSTROFOBIA";//
	gamemode_unlock[6] = "FINISH AN AREA IN UNDER 10 SECONDS";
	gamemode_have[6] = 0;

	gamemode[7] = "ATOM TELEPORT ONLY#NO WALKING";//
	gamemode_unlock[7] = "FINISH AN AREA WITHOUT WALKING AS ATOM";
	gamemode_have[7] = 0;

	gamemode[8] = "ULTRA HARD MODE#NOTHING HERE YET";//
	gamemode_unlock[8] = "GET INTO A CROWN VAULT#THIS NO LONGER EXISTS";
	gamemode_have[8] = 0;

	gamemode[9] = "CASUAL MODE";//
	gamemode_unlock[9] = "DIE ON 1-1";
	gamemode_have[9] = 0;

	gamemode[10] = "RANDOM AREAS";//
	gamemode_unlock[10] = "GO TO THREE SECRET AREAS IN ONE RUN";
	gamemode_have[10] = 0;

	gamemode[11] = "GUN GAME";//
	gamemode_unlock[11] = "PICK UP 50 WEAPONS IN ONE RUN";
	gamemode_have[11] = 0;

	gamemode[12] = "HUNTER ONLY SHOOT#WHEN MARKED";//
	gamemode_unlock[12] = "KILL EVERY PRE LOOP MAIN BOSS#WHILE ITS MARKED IN ONE RUN";
	gamemode_have[12] = 0;

	gamemode[13] = "ROCKET GLOVE ONLY#NO WALKING";//
	gamemode_unlock[13] = "PICK UP A ROCKET GLOVE";
	gamemode_have[13] = 0;

	gamemode[14] = "FISH'S PARTNER ONLY#NO WEAPONS";//
	gamemode_unlock[14] = "TAKE FISH'S ULTRA: BROTHERS IN ARMS";
	gamemode_have[14] = 0;

	gamemode[15] = "NO MUTATIONS";//
	gamemode_unlock[15] = "GET TO THE SCRAPYARD AT LEVEL 1";
	gamemode_have[15] = 0;

	gamemode[16] = "SPIKE TRAPS";//
	gamemode_unlock[16] = "REACH CRYSTAL CAVES ON 400% SCREENSHAKE";
	gamemode_have[16] = 0;

	gamemode[17] = "CHEATS";//
	gamemode_unlock[17] = "UNLOCK EVERYTHING!";
	gamemode_have[17] = 0;

	gamemode[18] = "NO ELITE IDPD";//
	gamemode_unlock[18] = "DESTROY AN IDPD VAN";
	gamemode_have[18] = 0;

	gamemode[19] = "DISC ROOM";//
	gamemode_unlock[19] = "DIE TO A DISC";
	gamemode_have[19] = 0;

	gamemode[20] = "AGORAPHOBIA";
	gamemode_unlock[20] = "BREAK MORE THAN 300 WALLS IN A SINGLE AREA"//"TAKE MORE THAN TEN MINUTES#TO FINISH AN AREA";
	gamemode_have[20] = 0;

	gamemode[21] = "LOOP START";
	gamemode_unlock[21] = "REACH L1 2-1";
	gamemode_have[21] = 0;

	gamemode[22] = "INFINITE LEVELS#SLOW LEVELING";
	gamemode_unlock[22] = "BEAT THE #INVERTED CHESHIRE CAT";
	gamemode_have[22] = 0;
	
	gamemode[23] = "RANDOM CHARACTER#IN EACH AREA";
	gamemode_unlock[23] = "PLAY EVERY CHARACTER";
	gamemode_have[23] = 0;
	
	gamemode[24] = "SHARP STRESS";
	gamemode_unlock[24] = "SHARP STRESS x10";
	gamemode_have[24] = 0;
	
	gamemode[25] = "SURVIVAL ARENA#STILL WORK IN PROGRESS";
	gamemode_unlock[25] = "SURVIVE TO LOOP 3 OR SOMETHING";
	gamemode_have[25] = 1;
	
	gamemode[26] = "DAILY RACE";
	gamemode_unlock[26] = "i dunno";
	gamemode_have[26] = 1;
	
	gamemode[27] = "DAILY SCORE";
	gamemode_unlock[27] = "i dunno";
	gamemode_have[27] = 1;
	
	gamemode[28] = "ALL MUTATION#CHOICES";
	gamemode_unlock[28] = "TAKE EVERY REGULAR MUTATION#ATLEAST ONCE";
	gamemode_have[28] = 0;
	
	/*
	gamemode[23] = "SEEDED";
	gamemode_description[23] = "YOU ONLY GET MELEE WEAPONS#ALWAYS GET LONG ARMS";
	gamemode_unlock[23] = "USE SNARE AGAINST A WALL RAPIDLY";
	gamemode_have[23] = 0;*/
	
	/*
	gamemode[23] = "MELEE ONLY";
	gamemode_description[23] = "YOU ONLY GET MELEE WEAPONS#ALWAYS GET LONG ARMS";
	gamemode_unlock[23] = "HAVE 3 MELEE WEAPONS EQUIPED AT ONCE";
	gamemode_have[23] = 0;*/

	/*
	gamemode[23] = "MASTERLUIGI452'S#10X MUTATIONS"; I don't think I'll ever make this theres too many mutations
	gamemode_unlock[23] = "INFECT AN ENEMY";
	gamemode_have[23] = 0;*/

	gamemodeOrder[0] = 0;
	gamemodeOrder[1] = 8;
	gamemodeOrder[2] = 3;
	gamemodeOrder[3] = 1;
	gamemodeOrder[4] = 2;
	gamemodeOrder[5] = 9;
	gamemodeOrder[6] = 5;
	gamemodeOrder[7] = 6;
	gamemodeOrder[8] = 20;
	gamemodeOrder[9] = 4;
	gamemodeOrder[10] = 10;
	gamemodeOrder[11] = 11;
	gamemodeOrder[12] = 12;
	gamemodeOrder[13] = 13;
	gamemodeOrder[14] = 14;
	gamemodeOrder[15] = 15;
	gamemodeOrder[16] = 16;
	gamemodeOrder[17] = 18;
	gamemodeOrder[18] = 19;
	gamemodeOrder[19] = 7;
	gamemodeOrder[20] = 21;
	gamemodeOrder[21] = 22;
	gamemodeOrder[22] = 25;
	gamemodeOrder[23] = 23;
	gamemodeOrder[24] = 24;
	gamemodeOrder[25] = 28;
	gamemodeOrder[26] = 17;
	gamemodeOrder[27] = 26;
	gamemodeOrder[28] = 27;




	maxgamemode = array_length(gamemodeOrder) - 1;

}
