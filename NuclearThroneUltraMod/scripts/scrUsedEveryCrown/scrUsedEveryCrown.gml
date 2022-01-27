function scrUsedEveryCrown() {
	with UberCont
	{

	var dir=0;
	var used=0;
	repeat(crownmax+1)
	{

	if crown_used[dir]=1
	used++;

	dir++;
	}

	if used>=crownmax+1
	return true;
	else
	return false;

	}



}
