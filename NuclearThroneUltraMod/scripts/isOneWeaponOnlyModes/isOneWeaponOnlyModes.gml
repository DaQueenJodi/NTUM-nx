///isOneWeaponOnlyModes();
// /@description
///@param
function isOneWeaponOnlyModes(){
	with UberCont
	{
		return (opt_gamemode=1||opt_gamemode=11||opt_gamemode=13||opt_gamemode=14);
	}
	return false;
}