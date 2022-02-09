function scrLoadStats() {
	var dir; dir=1
	repeat(racemax){
	//Stats per character yes we love stats #thronebutt.com
	ctot_kill[dir] = ini_read_real("STATS","ctotkill"+string(dir),0);

	ctot_time[dir] = ini_read_real("STATS","ctottime"+string(dir),0);

	ctot_dead[dir] = ini_read_real("STATS","ctotdead"+string(dir),0);
	
	ctot_played[dir] = ini_read_real("STATS","ctotplayed"+string(dir),0);

	ctot_loop[dir] = ini_read_real("STATS","ctotloop"+string(dir),0);

	cbst_kill[dir] = ini_read_real("STATS","cbstkill"+string(dir),0);

	cbst_time[dir] = ini_read_real("STATS","cbsttime"+string(dir),999999999);

	cbst_diff[dir] = ini_read_real("STATS","cbstdiff"+string(dir),0);

	cbst_loop[dir] = ini_read_real("STATS","cbstloop"+string(dir),0);
	dir +=1;}

	ctot_walls_destroyed = ini_read_real("STATS","ctotwallsdestroyed",0);


	tot_time = real(string_digits(ini_read_real("STATS","tottime",0)));
	debug("tot time: ",tot_time);
}
