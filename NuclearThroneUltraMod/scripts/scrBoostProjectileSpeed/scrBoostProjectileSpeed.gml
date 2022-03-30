///scrBoostProjectileSpeed();
// /@description
///@param
function scrBoostProjectileSpeed(){
	if instance_exists(Player) && Player.race=11
	{
		if team=2
			speed*=1.18;
	}
}