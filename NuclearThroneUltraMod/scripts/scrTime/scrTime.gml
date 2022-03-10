function scrTime(argument0, argument1) {
	days = 0
	hors = 0
	mins = 0
	secs = argument0

	if secs >= 60
	{do {secs -= 60 mins += 1}
	until secs < 60}

	if mins >= 60
	{do {mins -= 60 hors += 1}
	until mins < 60}

	if hors >= 24
	{do {hors -= 24 days += 1}
	until hors < 24}

	if argument1==true//days
	{
	if string(days) = "1"
	return string(hors)+":"+scrAddZero(mins,1)+":"+scrAddZero(secs,1)+" "+scrAddZero(days,2)+"DAY"
	else
	return string(hors)+":"+scrAddZero(mins,1)+":"+scrAddZero(secs,1)+" "+scrAddZero(days,2)+"DAYS"
	}
	else//no days
	{
	return string(hors)+":"+scrAddZero(mins,1)+":"+scrAddZero(secs,1);
	}



}
