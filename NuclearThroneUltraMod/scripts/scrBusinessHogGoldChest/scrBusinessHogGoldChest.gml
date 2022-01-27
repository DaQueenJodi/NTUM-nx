function scrBusinessHogGoldChest() {
	if instance_exists(Player)
	{

	instance_create(x,y,WallBreak);
	instance_create(x+16,y+16,WallBreak);
	instance_create(x+16,y-16,WallBreak);
	instance_create(x-16,y+16,WallBreak);
	instance_create(x-16,y-16,WallBreak);

	if Player.race=20//Business hog
	instance_create(x,y,GoldChest);

	}



}
