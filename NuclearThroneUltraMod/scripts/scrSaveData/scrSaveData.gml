function scrSaveData() {
	var dir; dir = 1
	repeat(racemax){
	ini_write_real("DATA","cwep"+string(dir),cwep[dir]);
	ini_write_real("DATA","race_have"+string(dir),race_have[dir]);
	ini_write_real("DATA","bskin"+string(dir),race_bskin[dir]);
	ini_write_real("DATA","cskin"+string(dir),race_cskin[dir]);
	ini_write_real("DATA","skin"+string(dir),skin[dir]);
	dir += 1;}

	dir=0
	repeat(crownmax)
	{
	ini_write_real("DATA","crown_used"+string(dir),crown_used[dir]);
	dir++;
	}

	dir=1;
	repeat (maxgamemode)
	{
	ini_write_real("DATA","gamemode_have"+string(dir),gamemode_have[dir]);
	dir++;
	}

	ini_write_real("DATA","protowep",protowep);
	ini_write_real("DATA","protowepmod1",protowepmod1);
	ini_write_real("DATA","protowepmod2",protowepmod2);
	ini_write_real("DATA","protowepmod3",protowepmod3);
	ini_write_real("DATA","protowepmod4",protowepmod4);

	ini_write_real("DATA","oneweponly298",oneweponly298);
	ini_write_real("DATA","oneweponly311",oneweponly311);
	ini_write_real("DATA","oneweponly315",oneweponly315);
	ini_write_real("DATA","oneweponly329",oneweponly329);
	ini_write_real("DATA","oneweponly177",oneweponly177);
	ini_write_real("DATA","oneweponly192",oneweponly192);
	ini_write_real("DATA","oneweponly69",oneweponly69);
	ini_write_real("DATA","oneweponly75",oneweponly75);
	ini_write_real("DATA","oneweponly264",oneweponly264);
	ini_write_real("DATA","oneweponly328",oneweponly328);
	ini_write_real("DATA","oneweponly231",oneweponly231);
	ini_write_real("DATA","oneweponly263",oneweponly263);
	ini_write_real("DATA","oneweponly214",oneweponly214);
	ini_write_real("DATA","oneweponly316",oneweponly316);

	var racedir=0;
	repeat(racemax)
	{
	dir=0;
	repeat(maxstartwep+1)
	{
	ini_write_real("DATA","start_wep_have"+string(dir)+string(racedir),start_wep_have[dir,racedir]);
	dir++;
	}
	racedir++;
	}



}
