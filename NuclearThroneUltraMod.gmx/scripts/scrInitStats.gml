//INITIALIZE STATISTICS BEEP BOOP

scrRaces() var dir; dir = 1
repeat(racemax){


//total stats per char
ctot_kill[dir] = 0////////total kills per char
ctot_time[dir] = 0////////total time per char
ctot_dead[dir] = 0////////total deaths per char
ctot_loop[dir] = 0

//best stats per char
cbst_kill[dir] = 0//best kills per char
cbst_time[dir] = 0//best time to beat the game?
cbst_diff[dir] = 0////////furthest difficulty reached
cbst_loop[dir] = 0

dir += 1}

tot_time = 0////////worldwide total time including time spent in menus etc.
