///scrSpawnSurvivalWaveReward();
// /@description
///@param
function scrSpawnSurvivalWaveReward(){
	var wave = Player.subarea;
	
	//Default chestspawn:
	if wave > 1
	{
		instance_create(x,y-64,WeaponChest);
		instance_create(x,y+64,RadChest);
		instance_create(x-64,y,AmmoChest);
		if Player.skill_got[23]//OPEN MIND IN SURVIVAL ARENA
		{
			instance_create(x+64,y,WeaponChest);
			instance_create(x+64,y+64,AmmoChest);
			instance_create(x+64,y-64,RadChest);
		}
	}
	/*
	switch (wave)
	{
		case 2:
			instance_create(x,y-64,WeaponChest);
			instance_create(x,y+64,RadChest);
		break;
		case 3:
			instance_create(x,y-64,WeaponChest);
			instance_create(x,y+64,RadChest);
		break;
	}*/
}