var dir; dir=1
repeat(racemax){
//Stats per character yes we love stats #thronebutt.com
ctot_kill[dir] =ini_read_real("STATS","ctotkill",0);

ctot_time[dir] = ini_read_real("STATS","ctottime",0);

ctot_dead[dir] = ini_read_real("STATS","ctotdead",0);

ctot_loop[dir] = ini_read_real("STATS","ctotloop",0);

cbst_kill[dir] = ini_read_real("STATS","cbstkill",0);

cbst_time[dir] = ini_read_real("STATS","cbsttime",999999999);

cbst_diff[dir] = ini_read_real("STATS","cbstdiff",0);

cbst_loop[dir] = ini_read_real("STATS","cbstloop",0);
dir +=1;}


tot_time = ini_write_real("STATS","tottime",0);
