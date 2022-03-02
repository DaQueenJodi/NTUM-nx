/// @description Start wave
#region intro
if instance_exists(SurvivalArenaStarter)
{
	centerX = SurvivalArenaStarter.x;
	centerY = SurvivalArenaStarter.y;
	x = centerX;
	y = centerY;
}
if instance_exists(Player)
{
	waveNumber = Player.subarea - waveNumberOffset
}
with WepPickup
{
	instance_destroy();
	instance_create(x,y,SurvivalPortal);
}
with chestprop
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with RadChest
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with ChestOpen
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
with Corpse
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
snd_play(sndCrownBlood);//LETS GO GET EM!
wave = [];
alarm[3] = 5;//Tell time is the difference between these two numbers
alarm[0] = 20;
spawnI = 0;
spawnItell = 0;
#endregion
#region area manip
switch (waveNumber)
{
	case 1:
		song = mus1;
		with Floor
		{
			if styleb
				sprite_index = sprFloor1B;
			else
				sprite_index = sprFloor1;
		}
	break;
	case 2:
		song = mus2;
		with Floor
		{
			if styleb
				sprite_index = sprFloor2B;
			else
				sprite_index = sprFloor2;
		}
	break;
	case 3:
		song = mus3;
		with Floor
		{
			if styleb
				sprite_index = sprFloor3B;
			else
				sprite_index = sprFloor3;
		}
	break;
	case 4:
		song = mus4;
		with Floor
		{
			if styleb
				sprite_index = sprFloor4B;
			else
				sprite_index = sprFloor4;
		}
	break;
	case 5:
		song = mus5;
		with Floor
		{
			if styleb
				sprite_index = sprFloor5B;
			else
				sprite_index = sprFloor5;
		}
	break;
	case 6:
		song = mus6;
		with Floor
		{
			if styleb
				sprite_index = sprFloor6B;
			else
				sprite_index = sprFloor6;
		}
	break;
	case 7:
		song = musVulcano;
		with Floor
		{
			if styleb
				sprite_index = sprFloor7B;
			else
				sprite_index = sprFloor7;
		}
	break;
	case 8:
		song = mus102;
		with Floor
		{
			if styleb
				sprite_index = sprFloor8B;
			else
				sprite_index = sprFloor8;
		}
	break;
	case 9:
		song = mus7;
		with Floor
		{
			if styleb
				sprite_index = sprFloor9B;
			else
				sprite_index = sprFloor9;
		}
	break;
}
#endregion
#region waves
var i = 0;
repeat(1+loops)
{
	switch (waveNumber)
	{
		#region wave 1 desert
		case 1:
		var cx = centerX - 128
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx-16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx+16,
				yy: centerY-16
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx+16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 1,
				xx: cx-16,
				yy: centerY+16
			};
			i++;
			wave[i] = {
					obj: Barrel,
					time: 120,
					xx: cx,
					yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Bandit,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: Scorpion,
				time: 140,
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: BanditSquare,
					time: 10,
				};
				i++;
			}
			wave[i] = {
					obj: BigMaggot,
					time: 60,
					xx: centerX,
					yy: centerY,
				};
			i++;
			repeat(12)
			{
				wave[i] = {
					obj: Maggot,
					time: 2,
				};
				i++;
			}
			wave[i] = {
					obj: BigMaggot,
					time: 60,
				};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 200,
				xx: centerX,
				yy: centerY-32
			};
			i++;
			wave[i] = {
				obj: GoldScorpion,
				xx: centerX,
				yy: centerY,
				time: 120
			};
			i++
			wave[i] = {
				obj: RadMaggotChest,
				time: 120,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			wave[i] = {
					obj: BigMaggot,
					time: 50,
				};
			i++;
			wave[i] = {
					obj: Scorpion,
					time: 20,
				};
			i++;
			wave[i] = {
					obj: Scorpion,
					time: 20,
				};
			i++;
			wave[i] = {
					obj: Bandit,
					time: 80,
				};
			i++;
			wave[i] = {
				obj: BanditBoss,
				time: 30,
				xx: centerX,
				yy: centerY
			};
		break;
		#endregion
		#region wave 2 sewers
		case 2:
			repeat(5)
			{
				wave[i] = {
					obj: Rat,
					time: 10
				};
				i++;
			}
			wave[i] = {
					obj: FastRat,
					time: 160
				};
				i++;
			wave[i] = {
				obj: Ratking,
				time: 100
			};
			i++;
			wave[i] = {
					obj: Exploder,
					time: 10,
				};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Gator,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Ratking,
				time: 130
			};
			i++;
			wave[i] = {
				obj: Gator,
				time: 10
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 160,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			wave[i] = {
				obj: Gator,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Ratking,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Bandit,
					time: 10,
				};
				i++;
			}
			wave[i] = {
					obj: Exploder,
					time: 10,
				};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: BanditSquare,
					time: 15,
				};
				i++;
			}
			wave[i] = {
				obj: WeaponChest,
				time: 200,
				xx: centerX,
				yy: centerY-32
			};
			i++;
			wave[i] = {
					obj: Exploder,
					time: 1,
				};
			i++;
			repeat(14)
			{
				wave[i] = {
					obj: Rat,
					time: 2,
				};
				i++;
			}
			wave[i] = {
				obj: ToxicBarrel,
				time: 200,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
					obj: SuperFrog,
					time: 200,
				};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Exploder,
					time: 2,
				};
				i++;
			}
			repeat(4)
			{
				wave[i] = {
					obj: ToxicBarrel,
					time: 2,
				};
				i++;
			}
		break;
		#endregion
		#region wave 3 scrapyard
		case 3:
			repeat(3)
			{
				wave[i] = {
					obj: Raven,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Raven,
				time: 120
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 30
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 60
			};
			i++;
			repeat(6)
			{
				wave[i] = {
					obj: Raven,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: Raven,
				time: 100
			};
			i++;
			wave[i] = {
				obj: Thief,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Exploder,
				time: 110
			};
			i++;
			wave[i] = {
				obj: ToxicBarrel,
				time: 100,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Exploder,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 4
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Thief,
				time: 4
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 120
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Sniper,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Sniper,
				time: 120
			};
			i++;
			wave[i] = {
				obj: Salamander,
				time: 6
			};
			i++;
			wave[i] = {
				obj: Thief,
				time: 6
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 150
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: ScrapBoss,
				time: 10,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 60
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 30
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Sniper,
				time: 1
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			wave[i] = {
				obj: Sniper,
				time: 1
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 5
			};
			wave[i] = {
				obj: Sniper,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Raven,
				time: 10
			};
		break;
		#endregion
		#region wave 4
		case 4:
			repeat(5)
			{
				wave[i] = {
					obj: Spider,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: Cocoon,
				time: 5
			};
			i++;
			wave[i] = {
					obj: LaserCrystal,
					time: 190
				};
				i++;
			wave[i] = {
				obj: FireBat,
				time: 40
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Spider,
					time: 6
				};
				i++;
			}
			wave[i] = {
				obj: LaserCrystal,
				time: 20,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Cocoon,
				time: 5
			};
			i++;
			wave[i] = {
				obj: LightningCrystal,
				time: 40,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: LaserCrystal,
				time: 100
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Spider,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: LaserCrystal,
				time: 180
			};
			i++;
			wave[i] = {
				obj: Cocoon,
				time: 5,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Spider,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: FireBat,
				time: 60
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 15
				};
				i++;
			}
			wave[i] = {
				obj: LightningCrystal,
				time: 200,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: EliteWeaponChest,
				time: 10,
				xx: centerX,
				yy: centerY+32
			};
			i++;
			repeat(4)
			{
				wave[i] = {
					obj: Spider,
					time: 5
				};
				i++;
			}
			wave[i] = {
				obj: LightningCrystal,
				time: 170
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 11
				};
				i++;
			}
			repeat(6)
			{
				wave[i] = {
					obj: Spider,
					time: 3
				};
				i++;
			}
			wave[i] = {
				obj: FireBat,
				time: 80
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: LaserCrystal,
					time: 2
				};
				i++;
			}
			wave[i] = {
				obj: LightningCrystal,
				time: 10
			};
			i++;
		break;
		#endregion
		#region wave 5
		case 5:
			repeat(3)
			{
				wave[i] = {
					obj: SnowBot,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: SnowBot,
				time: 40
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Wolf,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Wolf,
				time: 40
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: DiscGuy,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: DiscGuy,
				time: 50
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 5
			};
			i++;
			wave[i] = {
				obj: SnowTank,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: DiscGuy,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 40
			};
			i++;
			wave[i] = {
				obj: EliteWeaponChest,
				time: 5,
				xx: centerX-32,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: SnowTank,
				time: 70,
				xx: centerX+32,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: DiscGuy,
				time: 120
			};
			i++;
			wave[i] = {
				obj: GoldSnowTank,
				time: 120,
				xx: centerX+32,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: SnowTank,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: SnowTank,
				time: 60
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 200
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: GoldSnowTank,
					time: 17
				};
				i++;
			}
			wave[i] = {
				obj: GoldSnowTank,
				time: 300
			};
			i++;
			wave[i] = {
				obj: SnowBot,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Wolf,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: BanditSquare,
				time: 5
			};
			i++;
			wave[i] = {
				obj: Bandit,
				time: 5
			};
			i++;
			wave[i] = {
				obj: DiscGuy,
				time: 200
			};
			i++;
			wave[i] = {
				obj: HealthChest,
				time: 10,
				xx: centerX - 32,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: LilHunter,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: IDPDSpawn,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			wave[i] = {
				obj: VanSpawn,
				time: 60,
				xx: centerX-128,
				yy: centerY
			};
			i++;
		break;
		#endregion
		#region wave 6
		case 6:
			repeat(8)
			{
				wave[i] = {
					obj: Freak,
					time: 2
				};
				i++;
			}
			wave[i] = {
				obj: RhinoFreak,
				time: 2,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: Necromancer,
				time: 60,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(8)
			{
				wave[i] = {
					obj: Freak,
					time: 2
				};
				i++;
			}
			wave[i] = {
				obj: RhinoFreak,
				time: 50
			};
			i++;
			wave[i] = {
				obj: RhinoFreak,
				time: 20
			};
			i++;
			wave[i] = {
				obj: Necromancer,
				time: 120,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: Turret,
					time: 2
				};
				i++;
			}
			wave[i] = {
				obj: Turret,
				time: 10
			};
			i++;
			wave[i] = {
				obj: Necromancer,
				time: 90,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: ExploFreak,
				time: 80,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(20)
			{
				wave[i] = {
					obj: Freak,
					time: 1
				};
				i++;
			}
			repeat(3)
			{
				wave[i] = {
					obj: Necromancer,
					time: 10
				};
				i++;
			}
			wave[i] = {
				obj: Necromancer,
				time: 200,
				xx: centerX,
				yy: centerY
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: ExploFreak,
					time: 1
				};
				i++;
			}
			wave[i] = {
				obj: ExploFreak,
				time: 1
			};
			i++;
			wave[i] = {
				obj: RhinoFreak,
				time: 180,
				xx: centerX,
				yy: centerY
			};
			//Big machine
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-64,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-32,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+32,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+64,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX,
				yy: centerY-192
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-64,
				yy: centerY-192
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX-32,
				yy: centerY-192
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+64,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: WallBreak,
				time: 1,
				xx: centerX+32,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: BigMachine,
				time: 10,
				xx: centerX,
				yy: centerY-160
			};
			i++;
			wave[i] = {
				obj: BigMachineLaser,
				time: 2,
				xx: centerX-128,
				yy: centerY-96
			};
			i++;
			wave[i] = {
				obj: BigMachineLaser,
				time: 2,
				xx: centerX+128,
				yy: centerY-96
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: RhinoFreak,
					time: 1
				};
				i++;
			}
			wave[i] = {
				obj: RhinoFreak,
				time: 1
			};
			i++;
		break;
		#endregion
		#region wave 7
		case 7:
			repeat(7)
			{
				wave[i] = {
					obj: LavaBallEnemy,
					time: 4,
					xx: centerX+random_range(16,-16),
					yy: centerY+random_range(16,-16)
				};
				i++;
			}
			wave[i] = {
				obj: LavaBallEnemy,
				time: 140,
				xx: centerX+random_range(16,-16),
				yy: centerY+random_range(16,-16)
			};
			i++;
			repeat(3)
			{
				wave[i] = {
					obj: FireBat,
					time: 4,
					xx: centerX+random_range(16,-16),
					yy: centerY+random_range(16,-16)
				};
				i++;
			}
			wave[i] = {
				obj: FireBat,
				time: 120,
				xx: centerX+random_range(16,-16),
				yy: centerY+random_range(16,-16)
			};
			i++;
		break;
		#endregion
		/*
		#endregion
		#region wave 8
		case 8:
		break;
		#endregion
		#region wave 9
		case 9:
		break;
		
		#endregion
		*/
		#region loop
		default:
			//loops
			waveNumberOffset += waveNumber-1
			loops ++;
			Player.loops++;
			event_user(0);
			exit;
		break;
		#endregion
	}
}
#endregion
#region loop and song
with MusCont
{
	audio_stop_sound(song);
	song = other.song;
	snd_loop(song);
}
waveLength = array_length(wave);
for (var w = 0; w < waveLength; w++) {
	//Decrease duration between spawns each loops
	wave[w].time = clamp(wave[w].time/(1+(loops*0.3)),
	1,wave[w].time);
}
#endregion