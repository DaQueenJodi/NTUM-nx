///ApplyEuphoria();
// /@description speed change for projectiles
///@param
function ApplyEuphoria(){
	if instance_exists(Player)
	{if Player.skill_got[12] = 1
	speed = speed*0.75}
	if UberCont.opt_gamemode == 9
	{
		//Easy mode adjustments
		speed = speed*0.9
		image_xscale -= 0.1;
		image_yscale -= 0.1;
	}
}