///GetPlayerUltramod();
// /@description
///@param
function GetPlayerUltramod(){
	if instance_exists(Player)
	{
		return Player.ultramod;	
	}
	else
		return ultramods.nothing;
}