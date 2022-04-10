///scrGetPlayerAccuracy();
// /@description
///@param
function scrGetPlayerAccuracy(){
	if instance_exists(Player)
	{
		return Player.accuracy;	
	}
	return 1;
}