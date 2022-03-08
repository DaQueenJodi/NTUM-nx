/// @description Start wave not survival gamemode
if instance_exists(SurvivalArenaStarter)
{
	centerX = SurvivalArenaStarter.x;
	centerY = SurvivalArenaStarter.y;
	x = centerX;
	y = centerY;
}
with prop
{
	instance_destroy(id,false);
	instance_create(x,y,SurvivalPortal);
}
snd_play_2d(sndCrownCurses);
song = musReflection;
with MusCont
{
	audio_stop_sound(song);
	song = other.song;
	snd_loop(song);
}
with Player
{
	area = 5;	
}
with Floor
{
	if styleb
	{
		sprite_index = sprFloor5B	
	}
	else
	{
		sprite_index = sprFloor5;	
	}
}
if instance_exists(TopCont)
	TopCont.darkness = 0;

alarm[1] = 1;
exit;
//TEMP
var i = 0;
var waveType = choose(0,0);
switch (waveType)
{
	case 0:
		repeat(4)
		{
			wave[i] = {
				obj: Bandit,
				time: 1,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: BanditSquare,
				time: 2,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: BanditInverted,
				time: 4,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: LaserBandit,
				time: 8,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: EraserBandit,
				time: 7,
			};
			i++;
		};
		wave[i] = {
			obj: BanditBoss,
			time: 200,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: InvertedScorpion,
				time: 10,
			};
			i++;
		}
		wave[i] = {
			obj: GoldScorpion,
			time: 110,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: InvertedGoldScorpion,
				time: 15,
			};
			i++;
		};
		wave[i] = {
			obj: GoldSnowTank,
			time: 180,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Turtle,
				time: 4,
			};
			i++;
		};
		wave[i] = {
			obj: Rat,
			time: 180,
			xx: centerX,
			yy: centerY
		};
		i++;
		
		repeat(4)
		{
			wave[i] = {
				obj: InvertedMeleeBandit,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: InvertedRaven,
			time: 60,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: InvertedSniper,
				time: 6,
			};
			i++;
		};
		wave[i] = {
			obj: AmmoChest,
			time: 20,
			xx: centerX,
			yy: centerY-32
		};
		i++;
		wave[i] = {
			obj: InvertedScrapBoss,
			time: 70,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: InvertedRaven,
				time: 7,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: InvertedSniper,
				time: 8,
			};
			i++;
		};
		wave[i] = {
				obj: InvertedRaven,
				time: 200,
			};
			i++;
		wave[i] = {
			obj: HealthChest,
			time: 50,
			xx: centerX,
			yy: centerY+32
		};
		i++;
		wave[i] = {
			obj: InvertedAssassinBoss,
			time: 250,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: SnowTank,
				time: 10,
			};
			i++;
		};
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX-128,
			yy: centerY-64
		};
		i++;
		wave[i] = {
			obj: VanSpawn,
			time: 30,
			xx: centerX+128,
			yy: centerY+64
		};
		i++;
		wave[i] = {
			obj: InvertedLilHunter,
			time: 300,
			xx: centerX,
			yy: centerY
		};
		
	break;
}
waveLength = array_length(wave);
//Start it
alarm[3] = 5;//Tell time is the difference between these two numbers
alarm[0] = 20;
alarm[4] = 4;//U a quiter?