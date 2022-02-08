function scrPopEnemies() {
	//DESERT
	if spawnarea = 1 or spawnarea = 0// or spawnarea = 100
	{
	if styleb = 1
	{
	instance_create(x+16,y+16,choose(MaggotSpawn,BigMaggot,BigMaggot,Maggot))
	}
	else
	{
	if random(7) < 1 
	instance_create(x+16,y+16,choose(MaggotSpawn,Scorpion))
	else
	{if random(30) < 1
	{instance_create(x+16,y+16,Barrel)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)}
	else
	instance_create(x+16,y+16,choose(Bandit,Bandit,Bandit,Bandit,Bandit,Bandit,Maggot,Scorpion))}
	}
	}

	if spawnarea = 101//Oasis
	{

	if random(10) < 1 
	instance_create(x+16,y+16,choose(Crab,Crab))
	else
	instance_create(x+16,y+16,choose(BoneFish,BoneFish,BoneFish,BoneFish,BoneFish,BoneFish,BoneFish,Crab))

	}

	if spawnarea = 105//inverted desert
	{
	if styleb = 1
	{
	instance_create(x+16,y+16,choose(BanditInverted,BigMaggotInverted,BigMaggotInverted,BigMaggotInverted,BanditInverted,InvertedScorpion))
	}
	else
	{
	if random(7) < 1 
	instance_create(x+16,y+16,choose(BanditInverted,InvertedScorpion))
	else
	{if random(30) < 1
	{instance_create(x+16,y+16,Barrel)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,BanditInverted)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,BanditInverted)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,BanditInverted)}
	else if random(10)<1
	{
	instance_create(x+16+random(4),y+16+random(4),choose(BanditInverted,BanditInverted,BanditInverted,BanditInverted,BigMaggotInverted,BigMaggotInverted))
	instance_create(x+16+random(4),y+16+random(4),choose(BanditInverted,BanditInverted,BanditInverted,BanditInverted,BanditInverted,BigMaggotInverted))
	}
	if random(50)<1{
	instance_create(x+16,y+16,choose(InvertedScorpion,InvertedGoldScorpion,BigMaggotInverted,InvertedScorpion,BigMaggotInverted))
	}
	instance_create(x+16,y+16,choose(BanditInverted,BanditInverted,BanditInverted,BanditInverted,BigMaggotInverted,BanditInverted,BigMaggotInverted))}
	}

	}
	//SEWERS
	if spawnarea = 2
	{
	if styleb = 1
	{
	instance_create(x+16,y+16,choose(Rat,Rat,GatorSmoke,GatorSmoke,Exploder))
	}
	else
	{
	if random(9) < 1
	instance_create(x+16,y+16,choose(Exploder,Ratking,Exploder,Ratking,Exploder,Ratking,MeleeFake))
	else
	instance_create(x+16,y+16,choose(Rat,Rat,Rat,Rat,Rat,Rat,Rat,Bandit))
	}
	}

	//INVERTED SEWERS
	if spawnarea = 110
	{
	if styleb = 1
	{
	instance_create(x+16,y+16,choose(InvertedRat,InvertedRat,InvertedGator,InvertedGator,InvertedExploder))
	}
	else
	{
	if random(9) < 1
	instance_create(x+16,y+16,choose(InvertedExploder,InvertedRatking,InvertedExploder,InvertedRatking,InvertedExploder,InvertedRatking,InvertedMeleeFake))
	else
	instance_create(x+16,y+16,choose(InvertedRat,InvertedRat,InvertedRat,InvertedRat,InvertedRat,InvertedRat,InvertedRat,BanditInverted))
	}
	}

	//SCRAPYARD
	if spawnarea = 3
	{

	if styleb = 1 && random(2)<1
	{
	instance_create(x+16,y+16,choose(MeleeFake,Thief,Salamander,Salamander,Salamander,Salamander))
	}
	else{
	if random(4) < 1
	instance_create(x+16,y+16,choose(MeleeBandit,Sniper,MeleeFake,Sniper,MeleeFake,Sniper,Sniper,Exploder,Thief))
	else
	{
	if random(10) < 1
	{if random(8) < 1 instance_create(x+16,y+16,Car)
	//instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)}
	else
	instance_create(x+16,y+16,choose(Raven,Raven,Bandit))}
	}
	}

	//INVERTED SCRAPYARD
	if spawnarea = 106
	{

	if styleb = 1 && random(2)<1
	{
	instance_create(x+16,y+16,choose(InvertedMeleeFake,Thief,InvertedSalamander,InvertedSalamander,InvertedSalamander,InvertedSalamander))
	}
	else
	{
	if random(4) < 1
	instance_create(x+16,y+16,choose(InvertedMeleeFake,InvertedSniper,InvertedMeleeFake,InvertedSniper,InvertedMeleeFake,InvertedSniper,InvertedSniper,BanditInverted,Thief))
	else
	{
	if random(10) < 1
	{if random(8) < 1 instance_create(x+16,y+16,Car)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,InvertedRaven)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,Thief)}
	else
	instance_create(x+16,y+16,choose(InvertedRaven,InvertedRaven,BanditInverted))}
	}


	}

	//CAVES
	if spawnarea = 4
	{
	if random(30)<1
	instance_create(x+16,y+16,FireBat)
	else
	instance_create(x+16,y+16,choose(Spider,Spider,Spider,Spider,LaserCrystal))

	}


	//INVERTED CAVES
	if spawnarea = 111
	{
	if random(30)<1
	instance_create(x+16,y+16,InvertedFireBat)
	else
	instance_create(x+16,y+16,choose(InvertedSpider,InvertedSpider,InvertedSpider,InvertedSpider,LightningCrystal))

	}

	//FROZEN CITY
	if spawnarea = 5
	{
	if random(3) < 2
	instance_create(x+16,y+16,choose(SnowBot,SnowBot,SnowBot,SnowTank,Wolf,Wolf,DiscGuy))
	}

	//INVERTED FROZEN CITY
	if spawnarea = 107
	{
	if random(3) < 2
	instance_create(x+16,y+16,choose(InvertedDiscGuy,InvertedSnowBot,InvertedSnowBot,InvertedSnowTank,InvertedWolf,InvertedWolf,InvertedDiscGuy))
	}


	//LABS
	if spawnarea = 6
	{
	if subarea=2
	{
	if random(22) < 1
	instance_create(x+16,y+16,choose(Freak,Freak,Freak,Freak,Turret,RhinoFreak));

	}
	else
	{
		var ran = random(100);
		if ran > 90
		{
		repeat(10)
			instance_create(x+12+random(8),y+12+random(8),choose(Freak,Freak,Freak,Freak,Freak,Freak,Freak,Freak,Freak,Freak,ExploFreak,ExploFreak,RhinoFreak,Freak,Freak,Freak))
		}
		else if ran > 80
		{
			instance_create(x+16,y+16,choose(Necromancer,Necromancer,Necromancer,ExploFreak,RhinoFreak,Necromancer,Necromancer))
		}
		else if ran > 70 && !place_meeting(x,y,Turret)
		{
			instance_create(x+16,y+16,Turret);
			instance_create(x+16,y+16,NOWALLSHEREPLEASE);
		}
	}
	}

	//INVERTED LABS
	if spawnarea = 112
	{
		if subarea=2
		{
			if random(24) < 1
				instance_create(x+16,y+16,choose(InvertedFreak,InvertedFreak,InvertedFreak,InvertedFreak,InvertedTurret,InvertedRhinoFreak));

		}
		else
		{
			var ran = random(100);
			if ran > 90
			{
			repeat(10)
				instance_create(x+12+random(8),y+12+random(8),choose(InvertedFreak,InvertedFreak,InvertedFreak,InvertedFreak,InvertedFreak,InvertedFreak,
				InvertedFreak,InvertedFreak,InvertedFreak,InvertedFreak,InvertedExploFreak,InvertedExploFreak,InvertedRhinoFreak,InvertedFreak,InvertedFreak,InvertedFreak))
			}
			else if ran > 80
			{
				instance_create(x+16,y+16,choose(InvertedNecromancer,InvertedNecromancer,InvertedNecromancer,InvertedExploFreak,InvertedRhinoFreak,InvertedNecromancer,InvertedNecromancer))
			}
			else if ran > 70 && !place_meeting(x,y,InvertedTurret)
			{
				instance_create(x+16,y+16,InvertedTurret);
				instance_create(x+16,y+16,NOWALLSHEREPLEASE);
			}
		}
	}

	//VULCANO
	if spawnarea = 7
	{
		if styleb = 1//b style
		{
		if random(10) < 1
		{
		repeat(2)
		instance_create(x+12+random(8),y+12+random(8),choose(LavaBallEnemy,LavaBallEnemy,LavaBallEnemy,LavaBallEnemy,LavaBallEnemy,Salamander))
		}
		else if random(7) < 1
		instance_create(x+16,y+16,choose(SuperFireBaller,Thief,SuperFireBaller,FireBat,Bandit,FireBaller,FireBaller))
		}
		else//a style
		{
		if random(10) < 1
		{
		if instance_exists(Player){
		if Player.subarea=2{
			repeat(3)
			instance_create(x+12+random(8),y+12+random(8),choose(FireBat,LavaBallEnemy,LavaBallEnemy,FireBaller,FireBat,Salamander))
		}
		else{//not subarea 2
		repeat(4)
		instance_create(x+12+random(8),y+12+random(8),choose(FireBat,LavaBallEnemy,LavaBallEnemy,FireBaller,FireBat,Salamander,Bandit))}
		}
		else{//dead Player
		repeat(2)
		instance_create(x+12+random(8),y+12+random(8),choose(FireBat,LavaBallEnemy,LavaBallEnemy,FireBaller,FireBat,Salamander,Salamander,Bandit))
		}
		}
		else if random(7) < 1
		instance_create(x+16,y+16,choose(FireBat,FireBat,LavaBallEnemy,SuperFireBaller,SuperFireBaller,FireBaller,Salamander))
		}
	}

	//INVERTED VULCANO
	if spawnarea = 108
	{
		if styleb = 1//b style
		{
		if random(10) < 1
		{
		repeat(2)
		instance_create(x+12+random(8),y+12+random(8),choose(InvertedLavaBallEnemy,InvertedLavaBallEnemy,InvertedLavaBallEnemy,InvertedLavaBallEnemy,InvertedLavaBallEnemy,InvertedSalamander))
		}
		else if random(7) < 1
		instance_create(x+16,y+16,choose(InvertedSuperFireBaller,Thief,InvertedSuperFireBaller,InvertedFireBat,BanditInverted,InvertedFireBaller,InvertedFireBaller))
		}
		else//a style
		{
		if random(10) < 1
		{
		if instance_exists(Player){
		if Player.subarea=2{
			repeat(3)
			instance_create(x+12+random(8),y+12+random(8),choose(InvertedFireBat,InvertedLavaBallEnemy,InvertedLavaBallEnemy,InvertedFireBaller,InvertedFireBat,InvertedSalamander))
		}
		else{//not subarea 2
		repeat(4)
		instance_create(x+12+random(8),y+12+random(8),choose(InvertedFireBat,InvertedLavaBallEnemy,InvertedLavaBallEnemy,InvertedFireBaller,InvertedFireBat,InvertedSalamander,BanditInverted))}
		}
		else{//dead Player
		repeat(2)
		instance_create(x+12+random(8),y+12+random(8),choose(InvertedFireBat,InvertedLavaBallEnemy,InvertedLavaBallEnemy,InvertedFireBaller,InvertedFireBat,InvertedSalamander,InvertedSalamander,BanditInverted))
		}
		}
		else if random(7) < 1
		instance_create(x+16,y+16,choose(InvertedFireBat,InvertedFireBat,InvertedLavaBallEnemy,InvertedSuperFireBaller,InvertedSuperFireBaller,InvertedFireBaller,InvertedSalamander))
		}
	}

	if spawnarea = 8//Wonderland
	{
	if instance_exists(Player){
	if Player.subarea=3&&Player.area=8//WE LOVE BOSSES! in case loop make sure irght area
	{
	if !instance_exists(ChesireCat){
	instance_create(x+16,y+16,ChesireCat);}

	}
	else{
	    if styleb = 1
	    {
	    if random(3)<1
	    instance_create(x+16,y+16,choose(CardGuy,CardGuy2,ExplosiveSheep,CardGuy,CardGuy2,ExplosiveSheep,TeaPot,TeaPot))
	    }
	    else
	    {
	    if random(8) < 1 
	    instance_create(x+16,y+16,choose(TeaPot,ExplosiveSheep,TeaPot,TeaPot,TeaPot,CardGuy,CardGuy2))
	    else if random(4)<2.5
	    {
	    instance_create(x+16,y+16,choose(TeaPot,CardGuy,CardGuy,CardGuy,CardGuy2,CardGuy2,CardGuy2,Sheep))}
	    }
	}
	}
	else{
	    if styleb = 1
	    {
	    if random(3)<1
	    instance_create(x+16,y+16,choose(CardGuy,CardGuy2,ExplosiveSheep,CardGuy,Sheep,CardGuy2,Sheep,TeaPot,TeaPot))
	    }
	    else
	    {
	    if random(8) < 1 
	    instance_create(x+16,y+16,choose(TeaPot,ExplosiveSheep))
	    else if random(4)<2.5
	    {
	    instance_create(x+16,y+16,choose(TeaPot,CardGuy,CardGuy,CardGuy,CardGuy2,CardGuy2,CardGuy2,Sheep))}
	    }
	}
	}

	if spawnarea = 109//Inverted Wonderland
	{
	if instance_exists(Player)
	{
	if Player.subarea=3&&Player.area=109//WE LOVE BOSSES! in case loop make sure irght area
	{
	if !instance_exists(InvertedChesireCat){
	instance_create(x+16,y+16,InvertedChesireCat);}

	}
	else
	{
	    if styleb = 1
	    {
	    if random(3)<1
	    instance_create(x+16,y+16,choose(InvertedCardGuy,InvertedCardGuy2,ExplosiveSheep,ExplosiveSheep,InvertedCardGuy,InvertedCardGuy2,InvertedTeaPot,InvertedTeaPot))
	    }
	    else
	    {
	    if random(8) < 1 
	    instance_create(x+16,y+16,choose(InvertedTeaPot,InvertedTeaPot,InvertedTeaPot,ExplosiveSheep))
	    else if random(4)<2.5
	    {
	    instance_create(x+16,y+16,choose(InvertedTeaPot,InvertedCardGuy,InvertedCardGuy,InvertedCardGuy,InvertedCardGuy2,InvertedCardGuy2,InvertedCardGuy2))}
	    }
	}
	}
	else
	{
	    if styleb = 1
	    {
	    if random(3)<1
	    instance_create(x+16,y+16,choose(InvertedCardGuy,InvertedCardGuy2,ExplosiveSheep,ExplosiveSheep,InvertedCardGuy,InvertedCardGuy2,InvertedTeaPot,InvertedTeaPot))
	    }
	    else
	    {
	    if random(8) < 1 
	    instance_create(x+16,y+16,choose(InvertedTeaPot,InvertedTeaPot,InvertedTeaPot,ExplosiveSheep))
	    else if random(4)<2.5
	    {
	    instance_create(x+16,y+16,choose(InvertedTeaPot,InvertedCardGuy,InvertedCardGuy,InvertedCardGuy,InvertedCardGuy2,InvertedCardGuy2,InvertedCardGuy2))}
	    }
	}

	}

	//PIZZA SEWERS
	if spawnarea = 102
	{
	instance_create(x+16,y+16,Turtle)
	}


	//VENUZ AIRHORN.WAV
	if spawnarea = 103
	{
	if random(5) < 1
	instance_create(x+16,y+16,choose(FireBaller,Jock,FireBaller,Jock,FireBaller,SuperFireBaller))
	else if random(4) < 1
	{
	if random(5) < 1 && instance_exists(Player)
	{
	if point_distance(x,y,Player.x,Player.y)>64
	instance_create(x+16,y+16,GoldBarrel)
	}
	repeat(3)
	instance_create(x+16,y+16,choose(Molefish,Molefish,Molefish,Molefish,Molesarge))
	}
	}

	//BANDITLAND
	if spawnarea = 113
	{
	if styleb = 1
	{
	instance_create(x+16,y+16,choose(EraserBandit,Thief,Thief,Thief))
	}
	else
	{
	if random(20) < 1
	{
	repeat(1+irandom(3))
	instance_create(x+16+irandom(4)-2,y+16+irandom(4)-2,choose(Bandit,JungleBandit,LaserBandit,EraserBandit,BanditInverted))
	}
	else
	{if random(30) < 1
	{instance_create(x+16,y+16,Barrel)
	instance_create(x+16+random(4)-2,y+16+random(4)-2,choose(Bandit,JungleBandit,LaserBandit,EraserBandit,BanditInverted))
	instance_create(x+16+random(4)-2,y+16+random(4)-2,choose(Bandit,JungleBandit,LaserBandit,EraserBandit,BanditInverted))
	instance_create(x+16+random(4)-2,y+16+random(4)-2,choose(Bandit,JungleBandit,LaserBandit,EraserBandit,BanditInverted))}
	else if random(20) < 1
	{
	repeat(2+irandom(6))
	instance_create(x+16+random(4)-2,y+16+random(4)-2,Bandit)
	}
	else
	instance_create(x+16,y+16,choose(Bandit,LaserBandit,EraserBandit,LaserBandit,BanditInverted,Thief,JungleBandit))}
	}
	}
	
	if spawnarea == 9
	{
		if styleb = 1 && random(7) < 2
		{
		instance_create(x+16,y+16,choose(GuardianDog,GuardianDog,GhostGuardian))
		}
		else
		{
			var ran = random(100);
			
			if ran > 80
			{
				instance_create(x+16,y+16,choose(PalaceGuardian,PalaceGuardian,ExploGuardian,ExploGuardian,GhostGuardian,GuardianDog))	
			}
		}
		
	}



}
