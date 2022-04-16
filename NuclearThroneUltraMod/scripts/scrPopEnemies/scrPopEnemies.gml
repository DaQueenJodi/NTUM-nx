function scrPopEnemies() {
	var loops = 0;
	if instance_exists(Player)
		loops = Player.loops;
    //DESERT
    if spawnarea = 1 or spawnarea = 0 // or spawnarea = 100
    {
		if loops > 0 {
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(MaggotSpawn, BigMaggot, JungleFly, Maggot))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(MaggotSpawn, Scorpion, JungleFly, MeleeBandit, Sniper))
	            else {
	                if random(30) < 1 {
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, Bandit, Bandit, Bandit, JungleFly, Maggot, Maggot, Maggot, Maggot, Scorpion))
	            }
	        }
		} else {
			var theBandit = Bandit;
	        if (subarea > 1) {
	            theBandit = choose(Bandit, Bandit, Bandit, BanditSquare);
	        }
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(MaggotSpawn, BigMaggot, BigMaggot, Maggot))
	        }
	        else {
	            if random(7) < 1
	            instance_create(x + 16, y + 16, choose(MaggotSpawn, Scorpion))
	            else {
	                if random(30) < 1 {
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
	                }
	                else
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, theBandit, theBandit, Maggot, Scorpion))
	            }
	        }
		}
    }

    if spawnarea = 10 {
		if loops > 0
		{
			theBandit = choose(SavannaBandit, SavannaBandit, SavannaBandit, Bandit, BanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Vulture, Scorpion, SquareBat, Vulture,FireWorm))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
					}
				}
	            else {
		                if random(30) < 1 {
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, SavannaBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, SavannaBandit)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, SquareBat, FireWorm, GatorSmoke, Exploder, Vulture, Vulture,Scorpion))
	            }
			}
		}
		else
		{
	        theBandit = choose(SavannaBandit, SavannaBandit, SavannaBandit, Bandit, BanditSquare);
	        if styleb = 1 {
	            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Vulture, Hyena, Hyena, Vulture))
	        }
	        else {
	            if random(8) < 1
				{
					repeat(2)//Pack of hyenas
					{
						instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
					}
				}
	            else {
		                if random(30) < 1 {
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, SavannaBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
		                }
						else if random(25) < 1
						{
							repeat(2+irandom(2))
							{
								instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Hyena)
							}
						}
		                else
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(theBandit, theBandit, theBandit, theBandit, GatorSmoke, Exploder, Vulture, Vulture))
	            }
			}
        }
    }

    if spawnarea == 101 //Oasis
    {
		if loops > 0
		{
			if random(10) < 1
				instance_create(x + 16, y + 16, choose(Crab, Crab, Jock))
	        else
	            instance_create(x + 16, y + 16, choose(BoneFish, BoneFish, BoneFish, BoneFish, JellyFish, ScubaBandit, Turtle, Gator, Spider, ScubaBandit, Crab))
		}
		else
		{
	        if random(10) < 1
				instance_create(x + 16, y + 16, choose(Crab, Crab))
	        else
	            instance_create(x + 16, y + 16, choose(BoneFish, BoneFish, BoneFish, BoneFish, JellyFish, ScubaBandit, ScubaBandit, Crab))
		}

    }

    if spawnarea = 105 //inverted desert
    {
        if styleb = 1 {
            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BanditInverted, BigMaggotInverted, BigMaggotInverted, BigMaggotInverted, BanditInverted, InvertedScorpion))
        }
        else {
            if random(7) < 1
            instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BanditInverted, InvertedScorpion))
            else {
                if random(30) < 1 {
                    instance_create(x + 16, y + 16, Barrel)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, BanditInverted)
                }
                else if random(10) < 1 {
                    instance_create(x + 16 + random(4), y + 16 + random(4), choose(BanditInverted, BanditInverted, BanditInverted, BanditInverted, BigMaggotInverted, BigMaggotInverted))
                    instance_create(x + 16 + random(4), y + 16 + random(4), choose(BanditInverted, BanditInverted, BanditInverted, BanditInverted, BanditInverted, BigMaggotInverted))
                }
                if random(50) < 1 {
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(InvertedScorpion, InvertedGoldScorpion, BigMaggotInverted, InvertedScorpion, BigMaggotInverted))
                }
                instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(BanditInverted, BanditInverted, BanditInverted, BanditInverted, BigMaggotInverted, BanditInverted, BigMaggotInverted))
            }
        }

    }
    //SEWERS
    if spawnarea = 2 {
		if loops > 0 {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(Rat, Rat, Gator, Gator, Exploder))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(Exploder, Ratking, Exploder, Ratking, Exploder, Ratking, MeleeFake, SuperFireBaller))
	            else
	                instance_create(x + 16, y + 16, choose(Gator, Rat, Rat, Rat, Rat, Rat, Rat, Bandit))
	        }
		} else {
	        if styleb = 1 {
	            instance_create(x + 16, y + 16, choose(Rat, Rat, GatorSmoke, GatorSmoke, Exploder))
	        }
	        else {
	            if random(9) < 1
	            instance_create(x + 16, y + 16, choose(Exploder, Ratking, Exploder, Ratking, Exploder, Ratking, MeleeFake))
	            else
	                instance_create(x + 16, y + 16, choose(Rat, Rat, Rat, Rat, Rat, Rat, Rat, Bandit))
	        }
		}
    }

    //INVERTED SEWERS
    if spawnarea = 110 {
        if styleb = 1 {
            instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedGator, InvertedGator, InvertedExploder))
        }
        else {
            if random(9) < 1
            instance_create(x + 16, y + 16, choose(InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedExploder, InvertedRatking, InvertedMeleeFake))
            else
                instance_create(x + 16, y + 16, choose(InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, InvertedRat, BanditInverted))
        }
    }

    //SCRAPYARD
    if spawnarea = 3 {
		if loops > 0 {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(MeleeBandit, Thief, Salamander, Salamander, Salamander, Salamander))
	        }
	        else {
				if random(35) < 1
				instance_create(x + 16, y + 16, SnowBot)
	            else if random(4) < 1
	            instance_create(x + 16, y + 16, choose(MeleeBandit, Sniper, Gator, Sniper, Gator, Sniper, Sniper, Exploder, Thief))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Raven)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(Raven, Raven, Bandit, BanditSquare))
	            }
	        }
		} else {
			if styleb = 1 && random(2) < 1 {
				instance_create(x + 16, y + 16, choose(MeleeFake, Thief, Salamander, Salamander, Salamander, Salamander))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(MeleeBandit, Sniper, MeleeFake, Sniper, MeleeFake, Sniper, Sniper, Exploder, Thief))
	            else {
	                if random(10) < 1 {
	                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
	                    //instance_create(x+16+random(4)-2,y+16+random(4)-2,Raven)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Raven)
	                }
	                else
	                    instance_create(x + 16, y + 16, choose(Raven, Raven, Bandit, BanditSquare))
	            }
	        }
		}
    }

    //INVERTED SCRAPYARD
    if spawnarea = 106 {

        if styleb = 1 && random(2) < 1 {
            instance_create(x + 16, y + 16, choose(InvertedMeleeFake, Thief, InvertedSalamander, InvertedSalamander, InvertedSalamander, InvertedSalamander))
        }
        else {
            if random(4) < 1
            instance_create(x + 16, y + 16, choose(InvertedMeleeFake, InvertedSniper, InvertedMeleeFake, InvertedSniper, InvertedMeleeFake, InvertedSniper, InvertedSniper, BanditInverted, Thief))
            else {
                if random(10) < 1 {
                    if random(8) < 1 instance_create(x + 16, y + 16, Car)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, InvertedRaven)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Thief)
                }
                else
                    instance_create(x + 16, y + 16, choose(InvertedRaven, InvertedRaven, BanditInverted))
            }
        }


    }

    //CAVES
    if spawnarea = 4  && (subarea == 1 || random(3) < 1){
		var crystal = LaserCrystal
		if random(30) < 1//random 30
			crystal = LightningCrystal;
		if loops > 0 {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, SquareBat)
			}
			else if random(12) < 1
			{
					instance_create(x + 16, y + 16, Spider)
					instance_create(x + 16, y + 16, choose(Spider,SquareBat,Spider,Spider,FireBat));
			}
	        else if random(12) < 1
				instance_create(x + 16, y + 16, choose(SquareBat, ExploFreak, RhinoFreak,FireBat))
	        else
	            instance_create(x + 16, y + 16, choose(Spider, Spider, Spider, Spider, crystal,Spider, Spider, Spider, Spider, crystal,SquareBat,FireBat))
		} else {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, SquareBat)
			}
			else if random(10) < 1
			{
				repeat(2)
					instance_create(x + 16, y + 16, Spider)
			}
	        else
	            instance_create(x + 16, y + 16, choose(Spider, Spider, Spider, Spider, crystal,
				Spider, Spider, Spider, Spider, crystal,SquareBat))
		}
       
    }
    //CHEESE CAVES
    if spawnarea = 115 {
		var crystal = CursedCrystal;
		if random(30) < 1
			crystal = LightningCrystal;
		else if random(9) < 1
		{
			repeat(2)
				instance_create(x + 16, y + 16, CursedSpider)
		}
        instance_create(x + 16, y + 16, choose(CursedSpider, CursedSpider, CursedSpider, CursedSpider, crystal))
    }


    //INVERTED CAVES
    if spawnarea = 111  && (subarea == 1 || random(3) < 1){
		var crystal = LightningCrystal
		if random(30) < 1//random 30
			crystal = LaserCrystal;
		if loops > 0 {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, InvertedSquareBat)
			}
			else if random(12) < 1
			{
				instance_create(x + 16, y + 16, InvertedSpider)
				instance_create(x + 16, y + 16, choose(InvertedSpider,InvertedSquareBat,InvertedSpider,InvertedSpider,InvertedFireBat));
			}
	        else if random(12) < 1
				instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedExploFreak, InvertedRhinoFreak,InvertedFireBat))
	        else
			{
	            instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider,InvertedFireBat,
				crystal, crystal,InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider, crystal,InvertedSquareBat))
			}
		} else {
			if random(10) < 1
			{
				repeat(2+irandom(2))
					instance_create(x + 16, y + 16, InvertedSquareBat)
			}
			else if random(10) < 1
			{
				repeat(2)
					instance_create(x + 16, y + 16, InvertedSpider)
			}
	        else
	            instance_create(x + 16, y + 16, choose(InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider, crystal,
				InvertedSpider, InvertedSpider, InvertedSpider, InvertedSpider, crystal,InvertedSquareBat))
		}
       
    }

    //FROZEN CITY
    if spawnarea = 5 {
		if loops > 0 {
			if random(12) < 2
			instance_create(x + 16, y + 16, choose(ExploGuardian, GuardianDog, CubeGuardian, Necromancer))
			else if random(4) > 3
			instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, SnowBot, SnowTank, Wolf, Wolf, DiscGuy, BanditSquare))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,DiscGuy);
			}
		} else {
			if random(4) > 1
			instance_create(x + 16, y + 16, choose(SnowBot, SnowBot, SnowBot, SnowTank, Wolf, Wolf, DiscGuy, BanditSquare))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,DiscGuy);
			}
		}
    }

    //INVERTED FROZEN CITY
    if spawnarea = 107 {
		
		if loops > 0 {
			if random(12) < 2
			instance_create(x + 16, y + 16, choose(InvertedExploGuardian, InvertedGuardianDog, InvertedCubeGuardian, InvertedNecromancer))
			else if random(4) > 3
			instance_create(x + 16, y + 16, choose(InvertedSnowBot, InvertedSnowBot, InvertedSnowBot, InvertedSnowTank, InvertedWolf, InvertedWolf, InvertedDiscGuy, BanditSquare))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,InvertedDiscGuy);
			}
		}
		else
		{
	        if random(3) < 2
	        instance_create(x + 16, y + 16, choose(InvertedDiscGuy, InvertedSnowBot, InvertedSnowBot, InvertedSnowTank, InvertedWolf, InvertedWolf, InvertedDiscGuy))
			else if instance_number(enemy) < 1
			{
				instance_create(x + 16, y + 16,InvertedDiscGuy);
			}
		}
    }


    //LABS
    if spawnarea = 6 {
		if loops > 0 {
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(Freak, Freak, Freak, Freak, Turret, RhinoFreak,LaserCrystal,Ratking));

	        } else {
	            var ran = random(100);
	            if ran > 90 {
	                repeat(9)//10
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, ExploFreak, ExploFreak, RhinoFreak, Freak, Freak, Freak))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(Necromancer, Necromancer, Necromancer, ExploFreak, RhinoFreak, Necromancer, Necromancer))
	            }
	            else if ran > 70 && !place_meeting(x, y, Turret) {
	                instance_create(x + 16, y + 16, Turret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if ran > 65 {
					var crystal = LaserCrystal
					if random(40) < 1//random 30
						crystal = LightningCrystal;
					instance_create(x + 16, y + 16, choose(Ratking, crystal));
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Turret);
				}
	        }
		} else {
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(Freak, Freak, Freak, Freak, Turret, RhinoFreak));

	        } else {
	            var ran = random(100);
	            if ran > 90 {
	                repeat(9)//Used to be 10
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, Freak, ExploFreak, ExploFreak, RhinoFreak, Freak, Freak, Freak))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(Necromancer, Necromancer, Necromancer, ExploFreak, RhinoFreak, Necromancer, Necromancer))
	            }
	            else if ran > 70 && !place_meeting(x, y, Turret) {
	                instance_create(x + 16, y + 16, Turret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,Turret);
				}
	        }
		}

    }

    //INVERTED LABS
    if spawnarea = 112 {
		if loops > 0 {
	        if subarea = 2 {
	            if random(22) < 1
	            instance_create(x + 16, y + 16, choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedTurret, InvertedRhinoFreak,LightningCrystal,InvertedRatking));

	        } else {
	            var ran = random(100);
	            if ran > 90 {
	                repeat(9)//10
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, 
					InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedExploFreak, InvertedRhinoFreak, InvertedFreak, InvertedFreak, InvertedFreak))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(InvertedNecromancer, InvertedNecromancer, InvertedNecromancer, InvertedExploFreak, 
					InvertedRhinoFreak, InvertedNecromancer, InvertedNecromancer))
	            }
	            else if ran > 70 && !place_meeting(x, y, InvertedTurret) {
	                instance_create(x + 16, y + 16, InvertedTurret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if ran > 65 {
					instance_create(x + 16, y + 16, choose(InvertedRatking, LightningCrystal));
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedTurret);
				}
	        }
		}
		else
		{
	        if subarea = 2 {
	            if random(24) < 1
	            instance_create(x + 16, y + 16, choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedTurret, InvertedRhinoFreak));

	        }
	        else {
	            var ran = random(100);
	            if ran > 90 {
	                repeat(10)
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak,
	                    InvertedFreak, InvertedFreak, InvertedFreak, InvertedFreak, InvertedExploFreak, InvertedExploFreak, InvertedRhinoFreak, InvertedFreak, InvertedFreak, InvertedFreak))
	            }
	            else if ran > 80 {
	                instance_create(x + 16, y + 16, choose(InvertedNecromancer, InvertedNecromancer, InvertedNecromancer, InvertedExploFreak, InvertedRhinoFreak, InvertedNecromancer, InvertedNecromancer))
	            }
	            else if ran > 70 && !place_meeting(x, y, InvertedTurret) {
	                instance_create(x + 16, y + 16, InvertedTurret);
	                instance_create(x + 16, y + 16, NOWALLSHEREPLEASE);
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedTurret);
				}
	        }
		}
    }

    //VULCANO
    if spawnarea = 7 {
		if loops > 0
		{
			if styleb = 1 //b style
	        {
	            if random(4) < 1 {
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(LavaBallEnemy, FireWorm, FireWorm, FireWorm, LavaBallEnemy, Salamander,SuperFireBaller))
	            }
	            else if random(7) < 1
	            instance_create(x + 16, y + 16, choose(FireBat, Thief, FireWorm, FireBat, Bandit, BanditSquare, FireBat, FireWorm,FireBaller))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,LavaBallEnemy);
				}
	        } else //a style
	        {
	            if random(5) < 1 {
	                if instance_exists(Player) {
	                    if Player.subarea == 3 {
	                        if random(2) < 1 || instance_number(enemy) < 1
								instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, FireWorm, FireBat, Salamander,FireBaller,SuperFireBaller,FireBaller))
	                    }
	                    else { //not subarea 2
	                        repeat(1+irandom(2))
	                        instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, FireWorm, FireBat, Salamander, Bandit, BanditSquare,FireBaller))
	                    }
	                }
	                else { //dead Player
	                    repeat(2)
	                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, FireWorm, FireBat, Salamander, Salamander, Bandit, BanditSquare))
	                }
	            }
	            else if random(2) < 1
					instance_create(x + 16, y + 16, choose(FireBat, FireBat, LavaBallEnemy, FireBat, FireBat, FireWorm, Salamander,SuperFireBaller))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,LavaBallEnemy);
				}
	        }
		}
		else
		{
	        if styleb = 1 //b style
	        {
	            if random(4) < 1 {
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(LavaBallEnemy, FireWorm, FireWorm, FireWorm, LavaBallEnemy, Salamander))
	            }
	            else if random(7) < 1
	            instance_create(x + 16, y + 16, choose(FireWorm, Thief, FireWorm, FireBat, Bandit, BanditSquare, FireWorm, FireWorm))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,LavaBallEnemy);
				}
	        } else //a style
	        {
	            if random(5) < 1 {
	                if instance_exists(Player) {
	                    if Player.subarea == 3 {
	                        if random(2) < 1 || instance_number(enemy) < 1
								instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, FireWorm, FireBat, Salamander))
	                    }
	                    else { //not subarea 2
	                        repeat(1+irandom(2))
	                        instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, FireWorm, FireBat, Salamander, Bandit, BanditSquare))
	                    }
	                }
	                else { //dead Player
	                    repeat(2)
	                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(FireBat, LavaBallEnemy, LavaBallEnemy, FireWorm, FireBat, Salamander, Salamander, Bandit, BanditSquare))
	                }
	            }
	            else if random(2) < 1
					instance_create(x + 16, y + 16, choose(FireBat, FireBat, LavaBallEnemy, FireWorm, FireWorm, FireWorm, Salamander))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,LavaBallEnemy);
				}
	        }
		}
    }

    //INVERTED VULCANO
    if spawnarea = 108 {
        if loops > 0
		{
			if styleb = 1 //b style
	        {
	            if random(4) < 1 {
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedFireWorm, InvertedLavaBallEnemy, InvertedSalamander,InvertedSuperFireBaller))
	            }
	            else if random(7) < 1
	            instance_create(x + 16, y + 16, choose(InvertedFireWorm, Thief, InvertedFireWorm, InvertedFireBat, BanditInverted, BanditSquare, InvertedFireWorm, InvertedFireWorm,InvertedFireBaller))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,LavaBallEnemy);
				}
	        } else //a style
	        {
	            if random(5) < 1 {
	                if instance_exists(Player) {
	                    if Player.subarea == 3 {
							if random(2) < 1 || instance_number(enemy) < 1
								instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, 
							InvertedSalamander,InvertedFireBaller,InvertedSuperFireBaller,InvertedFireBaller))
	                    }
	                    else { //not subarea 2
	                        repeat(1+irandom(2))
	                        instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, 
							BanditInverted, BanditSquare,InvertedFireBaller))
	                    }
	                }
	                else { //dead Player
	                    repeat(2)
	                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, 
						InvertedSalamander, BanditInverted, BanditSquare))
	                }
	            }
	            else if random(2) < 1
					instance_create(x + 16, y + 16, choose(InvertedFireBat, InvertedFireBat, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedFireWorm, InvertedSalamander,InvertedSuperFireBaller))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
				}
	        }
		}
		else
		{
	        if styleb = 1 //b style
	        {
	            if random(4) < 1 {
	                instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedFireWorm, InvertedLavaBallEnemy, InvertedSalamander))
	            }
	            else if random(7) < 1
	            instance_create(x + 16, y + 16, choose(FireWorm, Thief, InvertedFireWorm, InvertedFireBat, BanditInverted, BanditSquare, InvertedFireWorm, InvertedFireWorm))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
				}
	        } else //a style
	        {
	            if random(5) < 1 {
	                if instance_exists(Player) {
	                    if Player.subarea == 3 {
							if random(2) < 1 || instance_number(enemy) < 1
								instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander))
	                    }
	                    else { //not subarea 2
	                        repeat(1+irandom(2))
	                        instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, BanditInverted, BanditSquare))
	                    }
	                }
	                else { //dead Player
	                    repeat(2)
	                    instance_create(x + 12 + random(8), y + 12 + random(8), choose(InvertedFireBat, InvertedLavaBallEnemy, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireBat, InvertedSalamander, 
						InvertedSalamander, BanditInverted, BanditSquare))
	                }
	            }
	            else if random(2) < 1
					instance_create(x + 16, y + 16, choose(InvertedFireBat, InvertedFireBat, InvertedLavaBallEnemy, InvertedFireWorm, InvertedFireWorm, InvertedFireWorm, InvertedSalamander))
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedLavaBallEnemy);
				}
	        }
		}
    }

    if spawnarea = 8 //Wonderland
    {
        if instance_exists(Player) {
            if Player.subarea = 3 && Player.area = 8 //WE LOVE BOSSES! in case loop make sure irght area
            {
                if !instance_exists(ChesireCat) {
                    instance_create(x + 16, y + 16, ChesireCat);
                }
				else if loops > 0 && random(8) < 1
				{
	                instance_create(x + 16, y + 16, choose(Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2, 
					Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2,
					GuardianDog, Hyena))
				}
				else if random(16) < 1
				{
					instance_create(x + 16, y + 16, choose(Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2, 
					Sheep, ExplosiveSheep, TeaPot, CardGuy, CardGuy2))
				}

            } else {
				if loops > 0
				{
					if styleb = 1 {
	                    if random(3) < 1
	                    instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, GuardianDog, CardGuy, CardGuy2, ExplosiveSheep, TeaPot, Hyena,Hyena,TeaPot,CubeGuardian))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep, TeaPot, TeaPot, TeaPot, CardGuy, CardGuy2,GuardianDog,Hyena,Hyena))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep,Hyena,Hyena,GuardianDog,CubeGuardian))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
	                }
				}
				else
				{
	                if styleb = 1 {
	                    if random(3) < 1
	                    instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, ExplosiveSheep, CardGuy, CardGuy2, ExplosiveSheep, TeaPot, TeaPot))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep, TeaPot, TeaPot, TeaPot, CardGuy, CardGuy2))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
	                }
				}
            }
        }
        else {
				if loops > 0
				{
					if styleb = 1 {
	                    if random(3) < 1
	                    instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, GuardianDog, CardGuy, CardGuy2, ExplosiveSheep, TeaPot, Hyena,Hyena,TeaPot,CubeGuardian))
	                }
	                else {
	                    if random(8) < 1
	                    instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep, TeaPot, TeaPot, TeaPot, CardGuy, CardGuy2,GuardianDog,Hyena,Hyena))
	                    else if random(4) < 2.5 {
	                        instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep,Hyena,Hyena,GuardianDog,CubeGuardian))
	                    }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
	                }
				}
				else
				{
		            if styleb = 1 {
		                if random(3) < 1
		                instance_create(x + 16, y + 16, choose(CardGuy, CardGuy2, ExplosiveSheep, CardGuy, Sheep, CardGuy2, Sheep, TeaPot, TeaPot))
		            }
		            else {
		                if random(8) < 1
		                instance_create(x + 16, y + 16, choose(TeaPot, ExplosiveSheep))
		                else if random(4) < 2.5 {
		                    instance_create(x + 16, y + 16, choose(TeaPot, CardGuy, CardGuy, CardGuy, CardGuy2, CardGuy2, CardGuy2, Sheep))
		                }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,CardGuy);
						}
		            }
				}
        }
    }

    if spawnarea = 109 //Inverted Wonderland
    {
        if instance_exists(Player) {
			if loops > 0
			{
				if styleb = 1 {
	                if random(3) < 1
	                instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedCardGuy2, InvertedGuardianDog, InvertedCardGuy, InvertedCardGuy2, ExplosiveSheep, InvertedTeaPot, Hyena,Hyena,InvertedTeaPot,InvertedCubeGuardian))
	            }
	            else {
	                if random(8) < 1
	                instance_create(x + 16, y + 16, choose(InvertedTeaPot, ExplosiveSheep, InvertedTeaPot, InvertedTeaPot, InvertedTeaPot, InvertedCardGuy, InvertedCardGuy2,InvertedGuardianDog,Hyena,Hyena))
	                else if random(4) < 2.5 {
	                    instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy2, InvertedCardGuy2, InvertedCardGuy2, Sheep,Hyena,Hyena,InvertedGuardianDog,InvertedCubeGuardian))
	                }
					else if instance_number(enemy) < 1
					{
						instance_create(x + 16, y + 16,InvertedCardGuy);
					}
	            }
			}
			else
			{
		        if Player.subarea = 3 && Player.area = 109 //WE LOVE BOSSES! in case loop make sure irght area
		        {
		            if !instance_exists(InvertedChesireCat) {
		                instance_create(x + 16, y + 16, InvertedChesireCat);
		            }

		        } else {
		            if styleb = 1 {
		                if random(3) < 1
		                instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedCardGuy2, ExplosiveSheep, ExplosiveSheep, InvertedCardGuy, InvertedCardGuy2, InvertedTeaPot, InvertedTeaPot))
		            }
		            else {
		                if random(8) < 1
		                instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedTeaPot, InvertedTeaPot, ExplosiveSheep))
		                else if random(4) < 2.5 {
		                    instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy2, InvertedCardGuy2, InvertedCardGuy2))
		                }
						else if instance_number(enemy) < 1
						{
							instance_create(x + 16, y + 16,InvertedCardGuy);
						}
		            }
		        }
			}
        }
        else {
            if styleb = 1 {
                if random(3) < 1
                instance_create(x + 16, y + 16, choose(InvertedCardGuy, InvertedCardGuy2, ExplosiveSheep, ExplosiveSheep, InvertedCardGuy, InvertedCardGuy2, InvertedTeaPot, InvertedTeaPot))
            }
            else {
                if random(8) < 1
                instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedTeaPot, InvertedTeaPot, ExplosiveSheep))
                else if random(4) < 2.5 {
                    instance_create(x + 16, y + 16, choose(InvertedTeaPot, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy, InvertedCardGuy2, InvertedCardGuy2, InvertedCardGuy2))
                } else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedCardGuy);
				}
            }
        }

    }

    //PIZZA SEWERS
    if spawnarea = 102 {
        instance_create(x + 16, y + 16, Turtle)
    }


    //VENUZ AIRHORN.WAV its OGG now..
    if spawnarea = 103 {
		if loops > 0
		{
			if random(5) < 1
	        instance_create(x + 16, y + 16, choose(FireBaller, Jock, FireBaller, Jock, FireBaller, SuperFireBaller,BuffMushroom))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, GoldBarrel)
	            }
	            repeat(3)
	            instance_create(x + 16, y + 16, choose(Molefish, Molefish, Molefish, Molefish, Molesarge,SquareBat,JellyFish))
	        }
		}
		else
		{
	        if random(5) < 1
	        instance_create(x + 16, y + 16, choose(FireBaller, Jock, FireBaller, Jock, FireBaller, SuperFireBaller))
	        else if random(4) < 1 {
	            if random(5) < 1 && instance_exists(Player) {
	                if point_distance(x, y, Player.x, Player.y) > 64
	                instance_create(x + 16, y + 16, GoldBarrel)
	            }
	            repeat(3)
	            instance_create(x + 16, y + 16, choose(Molefish, Molefish, Molefish, Molefish, Molesarge))
	        }
		}
    }

    //BANDITLAND
    if spawnarea = 113 {
        if styleb = 1 {
            instance_create(x + 16, y + 16, choose(EraserBandit, Thief, Thief, Thief, ))
        }
        else {
            if random(20) < 1 {
                repeat(1 + irandom(3))
                instance_create(x + 16 + irandom(4) - 2, y + 16 + irandom(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare))
            }
            else {
                if random(30) < 1 {
                    instance_create(x + 16, y + 16, Barrel)
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, choose(Bandit, ScubaBandit, SavannaBandit, JungleBandit, LaserBandit, EraserBandit, BanditInverted, BanditSquare))
                }
                else if random(20) < 1 {
                    repeat(2 + irandom(6))
                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, Bandit)
                }
                else
                    instance_create(x + 16, y + 16, choose(Bandit, SavannaBandit, ScubaBandit, LaserBandit, EraserBandit, LaserBandit, BanditInverted, Thief, JungleBandit, BanditSquare))
            }
        }
    }

    //JUNGLE
    if spawnarea = 114 {
		if loops > 0
		{
			if subarea != 2 || random(2) < 1
			{
		        if styleb = 1 && random(2) < 1 {
		            instance_create(x + 16, y + 16, choose(JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleFly,BigMaggot,FireWorm,Maggot,FireWorm))
		        }
		        else {
		            if random(4) < 1
		            instance_create(x + 16, y + 16, choose(JungleAssassin, JungleBandit, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleBandit, JungleBandit, FireWorm, Scorpion, BigMaggot, JungleFly,Maggot))
		            else {
		                if random(30) < 1 {
		                    instance_create(x + 16, y + 16, Barrel)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
		                }
		                else {
		                    instance_create(x + 16, y + 16, choose(JungleFly, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, Scorpion, BigMaggot, FireWorm, Scorpion,Maggot,FireWorm));
		                }
		            }
		        }
			}
		}
		else if subarea != 2 || random(2) < 1
		{
	        if styleb = 1 && random(2) < 1 {
	            instance_create(x + 16, y + 16, choose(JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleFly,MaggotSpawn,MaggotSpawn))
	        }
	        else {
	            if random(4) < 1
	            instance_create(x + 16, y + 16, choose(JungleAssassin, JungleBandit, JungleAssassinFake, JungleAssassinFake, JungleAssassinFake, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleFly))
	            else {
	                if random(30) < 1 {
	                    instance_create(x + 16, y + 16, Barrel)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
	                    instance_create(x + 16 + random(4) - 2, y + 16 + random(4) - 2, JungleBandit)
	                }
	                else {
	                    instance_create(x + 16, y + 16, choose(JungleFly, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit, JungleBandit));
	                }
	            }
	        }
		}
    }
	
	//MUSHROOM LAND
    if spawnarea = 117 {
		if loops > 0
		{
		    if random(9) < 1
		    instance_create(x + 16, y + 16, choose(Exploder, BuffMushroom, ToxicMushroomGuy, BuffMushroom, Gator, ToxicMushroomGuy, BanditSquare,Ratking))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(Gator, Rat, ToxicMushroomGuy, BuffMushroom, BuffMushroom, ToxicMushroomGuy, ToxicMushroomGuy, BanditSquare,Exploder,Ratking,Ratking,Rat,Rat,LaserBandit,LaserBandit,Spider,Spider,Spider))
		}
		else
		{
			if random(9) < 1
				instance_create(x + 16, y + 16, choose(Exploder, BuffMushroom, ToxicMushroomGuy, BuffMushroom, Gator, ToxicMushroomGuy, BanditSquare))
		    else if random(2) < 1
		        instance_create(x + 16, y + 16, choose(Gator, GatorSmoke, ToxicMushroomGuy, BuffMushroom, BuffMushroom, ToxicMushroomGuy, ToxicMushroomGuy, BanditSquare,Exploder))	
		}
    }


    if spawnarea == 9 && subarea != 3 {
		if loops > 0 {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(GuardianDog, GhostGuardian,PalaceGuardian))
	        } else {
	            var ran = random(100);
	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(PalaceGuardian, PalaceGuardian, ExploGuardian, ExploGuardian, GhostGuardian, GuardianDog, CubeGuardian))
	            } else if ran > 50 {
					instance_create(x + 16, y + 16, choose(Sniper, JungleBandit, ExploFreak))
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,PalaceGuardian);
				}
	        }
		} else {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(GuardianDog, GuardianDog, GhostGuardian))
	        } else {
	            var ran = random(100);

	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(PalaceGuardian, PalaceGuardian, ExploGuardian, CubeGuardian, GhostGuardian, GuardianDog))
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,PalaceGuardian);
				}
	        }
		}
    }
	if spawnarea == 118 && subarea != 3 {//Inverted palace
		if loops > 0 {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedGhostGuardian,InvertedPalaceGuardian))
	        } else {
	            var ran = random(100);
	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedExploGuardian, InvertedGhostGuardian, InvertedGuardianDog, InvertedCubeGuardian))
	            } else if ran > 50 {
					instance_create(x + 16, y + 16, choose(InvertedSniper, JungleBandit, InvertedExploFreak))
				}
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedPalaceGuardian);
				}
	        }
		} else {
			if styleb = 1 && random(7) < 2 {
	            instance_create(x + 16, y + 16, choose(InvertedGuardianDog, InvertedGuardianDog, InvertedGhostGuardian))
	        } else {
	            var ran = random(100);

	            if ran > 70 {
	                instance_create(x + 16, y + 16, choose(InvertedPalaceGuardian, InvertedPalaceGuardian, InvertedExploGuardian, InvertedCubeGuardian, InvertedGhostGuardian, InvertedGuardianDog))
	            }
				else if instance_number(enemy) < 1
				{
					instance_create(x + 16, y + 16,InvertedPalaceGuardian);
				}
	        }
		}
    }
}
