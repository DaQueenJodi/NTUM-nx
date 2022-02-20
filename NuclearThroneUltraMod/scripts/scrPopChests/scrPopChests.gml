function scrPopChests() {
	var gol = 1;
	var healthChestGol = choose(0,0,0,0,0,0,0,0,1);
	var wepChestGol = gol;
	
	
	if instance_exists(HealthChest)
	{
	healthChestGol += min(instance_number(HealthChest),1);
	debug("og HP chest: ", healthChestGol);
	}
	
	if instance_exists(Player)
	{
		if Player.area = 104{
		exit;}
	
		if(Player.skill_got[23]){//OPEN MIND

		if Player.race=25
		gol=choose(3,3,4,4,2);
		else
		gol = choose(3,3,4,3,2);

		healthChestGol += choose(0,0,0,0,1);
		}
		if Player.race == 4 //YUNG CUZ
		{
			healthChestGol += choose(0,0,0,0,1);
		}
		wepChestGol = gol;
	
		if Player.crown == 15//CROWN OF CHOICE
		{
			gol += 1;
			healthChestGol += choose(0,0,0,0,0,1);
			wepChestGol += 2;
		}


		if Player.area = 100
		{
		if instance_exists(Crown){
		with instance_furthest(Player.x,Player.y,WeaponChest)
		instance_create(x,y,ProtoChest)}
		gol = 0
		}
	
	}
	debug("I want this many healthchests: ",healthChestGol);
	if instance_exists(HealthChest)
	debug("and I currently have: ",instance_number(HealthChest));
	var totalWepsChests=0,totalRadChests=0,totalAmmoChests=0,totalHealthChests=0;
	if instance_exists(WeaponChest)
	{
		totalWepsChests = instance_number(WeaponChest);
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,WeaponChest) instance_destroy()}
	until instance_number(WeaponChest) <= wepChestGol
	}
	if instance_exists(RadChest)
	{
		totalRadChests = instance_number(RadChest);
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,RadChest) instance_destroy()}
	until instance_number(RadChest) <= gol
	}
	if instance_exists(AmmoChest)
	{
		totalAmmoChests = instance_number(AmmoChest)
		do {with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,AmmoChest) instance_destroy()}
	until instance_number(AmmoChest) <= gol
	}
	if instance_exists(HealthChest)
	{
		totalHealthChests = instance_number(HealthChest)
		do {
		with instance_nearest(Player.x+random(500)-250,Player.y+random(500)-250,HealthChest) instance_destroy()}
	until instance_number(HealthChest) <= healthChestGol
	}
	if (totalWepsChests < wepChestGol)
	{
		debug("WeaponChest");
		scrCreateMissingChest(WeaponChest,wepChestGol);	
	}
	if (totalRadChests < gol)
	{
		debug("RadChest");
		scrCreateMissingChest(RadChest,gol);	
	}
	if (totalAmmoChests < gol)
	{
		debug("AmmoChest");
		scrCreateMissingChest(AmmoChest,gol);	
	}
	if (totalHealthChests < healthChestGol)
	{
		debug("HPCHEST");
		scrCreateMissingChest(HealthChest,healthChestGol);	
	}
	
	if Player.area == 9 && Player.subarea == 3
	{
		var xx = Player.x;
		var yy = Player.y;
		xx = 10016+16;
		yy = 10016+16;
		instance_create(xx-48,yy-64,WeaponChest);
		instance_create(xx+48,yy-64,AmmoChest);
		if Player.skill_got[23]
		{
			instance_create(xx-96,yy-64,WeaponChest);
			instance_create(xx+06,yy-64,AmmoChest);
		}
	}
	
	with ChestOpen
	instance_destroy()
	if instance_exists(Player)
	{
	if Player.crown = 9
	{
	with RadChest
	{image_speed = 0.4
	instance_change(Wind,false)
	instance_create(x,y,AmmoChest)}
	with AmmoChestMystery
	{image_speed = 0.4
	instance_change(Wind,false)
	instance_create(x,y,AmmoChest)}
	with WeaponChest
	{image_speed = 0.4
	instance_change(Wind,false)
	instance_create(x,y,AmmoChest)}
	with HealthChest
	{image_speed = 0.4
	instance_change(Wind,false)
	instance_create(x,y,AmmoChest)}
	}
	with AmmoChest
	{
	if random(11) < 1 and (Player.area >= 2 or Player.loops >= 1)
	{
	instance_create(x,y,Mimic)
	image_speed = 0.4
	instance_change(Wind,false)
	}
	}


	with HealthChest
	{
	if random(51) < 1 and (Player.area >= 2 or Player.loops >= 1)
	{
	instance_create(x,y,SuperMimic)
	image_speed = 0.4
	instance_change(Wind,false)
	}
	}
	}



}
