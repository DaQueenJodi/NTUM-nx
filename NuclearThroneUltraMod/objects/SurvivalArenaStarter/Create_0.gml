/// @description Init
if (UberCont.opt_gamemode == 25)
{
	if instance_exists(Player)
	{
		name = "START WAVE "+string(Player.subarea);
		scrSpawnSurvivalWaveReward();
	}
	else
	{
		//Won't come here
		name = "START WAVE 1";	
	}
	image_speed = 0;
	var dis = 48;
	instance_create(x - dis,y - dis,OldTorch);
	instance_create(x + dis,y - dis,OldTorch);
	instance_create(x + dis,y + dis,OldTorch);
	instance_create(x - dis,y + dis,OldTorch);
}
else
{
	name = "TAKE THE CHALLENGE?";
	var dis = 48;
	instance_create(x - dis,y - dis,Torch);
	instance_create(x + dis,y - dis,Torch);
	instance_create(x + dis,y + dis,Torch);
	instance_create(x - dis,y + dis,Torch);
}