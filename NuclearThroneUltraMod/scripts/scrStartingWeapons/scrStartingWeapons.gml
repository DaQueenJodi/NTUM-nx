function scrStartingWeapons() {
	start_wep[0]=0
	start_wep[1]=290
	start_wep[2]=40
	start_wep[3]=41
	start_wep[4]=42
	start_wep[5]=43
	start_wep[6]=44
	start_wep[7]=45
	start_wep[8]=224
	start_wep[9]=225
	start_wep[10]=226
	start_wep[11]=227
	start_wep[12]=228
	start_wep[13]=229
	start_wep[14]=230
	start_wep[15]=276
	start_wep[16]=277
	start_wep[17]=278
	start_wep[18]=279 
	start_wep[19]=280 
	start_wep[20]=281 
	start_wep[21]=282 
	start_wep[22]=400
	start_wep[23]=284
	start_wep[24]=285
	start_wep[25]=286 
	start_wep[26]=287 
	start_wep[27]=288
	start_wep[28]=383
	start_wep[29]=391

	var dir=1;

	repeat(racemax)
	{

	start_wep_have[0,dir]=1
	start_wep_have[1,dir]=0
	start_wep_have[2,dir]=0
	start_wep_have[3,dir]=0
	if dir == 20
	start_wep_have[4,dir]=1
	else
	start_wep_have[4,dir]=0
	start_wep_have[5,dir]=0
	start_wep_have[6,dir]=0
	start_wep_have[7,dir]=0
	start_wep_have[8,dir]=0
	start_wep_have[9,dir]=0
	start_wep_have[10,dir]=0
	start_wep_have[11,dir]=0
	start_wep_have[12,dir]=0
	start_wep_have[13,dir]=0
	start_wep_have[14,dir]=0
	start_wep_have[15,dir]=0
	start_wep_have[16,dir]=0
	start_wep_have[17,dir]=0
	start_wep_have[18,dir]=0 
	start_wep_have[19,dir]=0 
	start_wep_have[20,dir]=0 
	start_wep_have[21,dir]=0 
	start_wep_have[22,dir]=0
	start_wep_have[23,dir]=0
	start_wep_have[24,dir]=0
	start_wep_have[25,dir]=0 
	start_wep_have[26,dir]=0 
	start_wep_have[27,dir]=0
	start_wep_have[28,dir]=0
	start_wep_have[29,dir]=0

	dir++;
	}

	maxstartwep=29;
}
