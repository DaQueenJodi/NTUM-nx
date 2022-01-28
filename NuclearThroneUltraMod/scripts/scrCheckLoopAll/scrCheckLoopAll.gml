function scrCheckLoopAll() {
	with UberCont
	{

	var dir=1;
	var thisonelooped=1;
	repeat(racemax)
	{

	if ctot_loop[dir]>0
	thisonelooped++;

	dir++;
	}


	if thisonelooped>=racemax
	return true
	else
	return false
	}



}
