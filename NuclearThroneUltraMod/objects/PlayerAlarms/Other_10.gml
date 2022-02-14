/// @description (re)-Init
alarm[0] = checkDelay;
debug("check for stresss")
if instance_exists(Player)
{
	if Player.race == 12
		alarm[1] = 150;//5 seconds yung cuz
	
	if Player.skill_got[22] == 1 //STRESS
		alarm[2] = stressLowCheck;
}
