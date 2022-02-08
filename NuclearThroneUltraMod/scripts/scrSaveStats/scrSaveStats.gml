function scrSaveStats() {

	var dir; dir=0
	repeat(racemax){
	ini_write_real("STATS","ctotkill"+string(dir),ctot_kill[dir]);

	ini_write_real("STATS","ctottime"+string(dir),ctot_time[dir]);

	ini_write_real("STATS","ctotdead"+string(dir),ctot_kill[dir]);

	ini_write_real("STATS","ctotloop"+string(dir),ctot_loop[dir]);

	ini_write_real("STATS","cbstkill"+string(dir),cbst_kill[dir]);

	ini_write_real("STATS","cbsttime"+string(dir),cbst_time[dir]);

	ini_write_real("STATS","cbstdiff"+string(dir),cbst_diff[dir]);

	ini_write_real("STATS","cbstloop"+string(dir),cbst_loop[dir]);
	
	dir +=1;}
	
	ini_write_real("STATS","ctotwallsdestroyed",ctot_walls_destroyed);

	ini_write_real("STATS","tottime",string(tot_time));
}
