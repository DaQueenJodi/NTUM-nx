/// @description Start wave
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
}
snd_play(sndCrownBlood);//LETS GO GET EM!
wave = [];
alarm[0] = 5;
spawnI = 0;
var i = 0;
repeat(1+loops)
{
	switch (waveNumber)
	{
		#region wave 1
		case 1:
			repeat(3)
			{
				wave[i] = {
					obj: Bandit,
					time: 10,
				};
				i++;
			}
			wave[i] = {
				obj: Bandit,
				time: 120,
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
				obj: BanditSquare,
				time: 120,
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
		/*case 2:
			
		break;*/
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
waveLength = array_length(wave);
for (var w = 0; w < waveLength; w++) {
	//Decrease duration between spawns each loops
	wave[w].time = clamp(wave[w].time/(1+(loops*0.2)),
	1,wave[w].time);
}
