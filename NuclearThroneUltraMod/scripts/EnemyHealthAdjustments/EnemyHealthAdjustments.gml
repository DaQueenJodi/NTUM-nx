///xxx();
// /@description
///@param
function EnemyHealthAdjustments(){
	if instance_exists(Player)
	{
		maxhealth*= 1 + (Player.loops*0.1);

		var hpReduction = 0;
		if Player.skill_got[11] = 1//Scarier face
		{
			if Player.race=25
				hpReduction += round(maxhealth*0.20)
			else
				hpReduction += round(maxhealth*0.18)
		}
		if Player.skill_got[33] = 1//GLASS ARM CANNON
		{
			hpReduction += round(maxhealth*0.25)
		}
		
		
		if UberCont.opt_gamemode = 9//easy mode
		{
			hpReduction += round(maxhealth*0.2);
		}
		
		my_health = max(1,maxhealth - hpReduction);
	}
	if UberCont.opt_gamemode == 5//1HP gamemode
	{
		my_health=1;
		maxhealth=my_health;
	}
}