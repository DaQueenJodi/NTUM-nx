/// @description Init
event_inherited();
laserRange = 3;
laserRangeIncrease = 5 + min(5,GetPlayerLoops());
if instance_exists(Player) && Player.skill_got[12]
	laserRangeIncrease -= 2;
maxRange = 800;
alarm[3] = 1;
