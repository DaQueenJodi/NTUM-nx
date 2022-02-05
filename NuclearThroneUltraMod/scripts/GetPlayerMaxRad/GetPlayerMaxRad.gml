///GetPlayerMaxRad();
// /@description Gets maximum rads player can have need to run in player for access to variables
function GetPlayerMaxRad(){
	//Todo if we died and respawn level up quicker untill lvl 9
	return (level*62)+(300*ultra_got[77])+(600*ultra_got[83]);
}