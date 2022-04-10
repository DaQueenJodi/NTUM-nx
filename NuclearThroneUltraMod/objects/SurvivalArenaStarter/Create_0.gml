/// @description Init
image_speed = 0;
var dis = 48;
if (UberCont.opt_gamemode == 26 || UberCont.opt_gamemode == 27)
{
	if UberCont.canDoChallenge
	{
		name = "CAN ONLY DO CHALLENGE ONCE\nIN DAILY\nSO SORRY";
		exit;
	}
	else
	{
		UberCont.canDoChallenge = false;
	}
}
else
{
	UberCont.canDoChallenge = true;
}
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
	var dis = 48;
	instance_create(x - dis,y - dis,OldTorch);
	instance_create(x + dis,y - dis,OldTorch);
	instance_create(x + dis,y + dis,OldTorch);
	instance_create(x - dis,y + dis,OldTorch);
}
else
{
	name = "TAKE THE CHALLENGE?";
	instance_create(x - dis,y - dis,Torch);
	instance_create(x + dis,y - dis,Torch);
	instance_create(x + dis,y + dis,Torch);
	instance_create(x - dis,y + dis,Torch);
}