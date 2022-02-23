/// @description Init
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

