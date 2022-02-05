function scrDecideWepElite(argument0) {
	if instance_exists(Player)
	{
	if UberCont.opt_gamemode=2{
	if Player.loops>0
	wep=choose(24,79,12,11,234,236,197,127,128);//E Sword, SPC, SuCros, Auto crossy, heavy auto, super heavy auto, dubble super plasma cannon,Eswordgun,SEswordgun
	else
	wep=choose(24,79,12,11);//E Sword, SPC, SuCros, Auto crossy

	} else {

	if Player.race = 8
	argument0 += 2

	var dir=0;
	do {
	    dir++;
	    wep=irandom(maxwep-1)+1;
	}
	until ((wep_area[wep] != -1 and wep_area[wep] > Player.hard + argument0/2 and wep_area[wep] < Player.hard + argument0 + 1) || dir > 16000)

	if (dir > 16000 and Player.hard>24) { //if main search fails and player is far along just look for a weapon above area 24
	    dir = 0;
	    do {
	    dir++;
	    wep = irandom(maxwep-1)+1;
	    } until (wep_area[wep]>24 || dir > 16000)
	}

	if (dir > 16000 and Player.hard>16) { //if secondary search fails or player is not so far just look for a weapon above area 16
	    dir = 0;
	    do {
	    dir++;
	    wep = irandom(maxwep-1)+1;
	    } until (wep_area[wep]>16 || dir > 16000)
	}
	}}
	else
	wep = round(random(maxwep-1)+1)

	return wep;



}
