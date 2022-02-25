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
alarm[0] = 15;
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
}
#endregion
#region waves
var i = 0;
repeat(1+loops)
{
	switch (waveNumber)
	{
		#region wave 1
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
					time: 60,
				};
			i++;
			wave[i] = {
				obj: BanditBoss,
				time: 30,
				xx: centerX,
				yy: centerY
			};
			i++;
			wave[i] = {
				obj: AmmoChest,
				time: 30,
				xx: centerX,
				yy: centerY+32
			};
		break;
		#endregion
		#region wave 2
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
				time: 140
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
					obj: Bandit,
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
				obj: AmmoChest,
				time: 160,
				xx: centerX,
				yy: centerY+32
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
		
		default:
			//loops
			waveNumberOffset += waveNumber-1
			loops ++;
			Player.loops++;
			event_user(0);
			exit;
		break;
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
	wave[w].time = clamp(wave[w].time/(1+(loops*0.2)),
	1,wave[w].time);
}
#endregion