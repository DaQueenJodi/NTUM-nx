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
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
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

var i = 0;
switch (UberCont.crownVaultChallenge)
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
				obj: Bandit,
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
				obj: Scorpion,
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
				obj: GoldScorpion,
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
				obj: MeleeBandit,
				time: 2,
			};
			i++;
		};
		wave[i] = {
			obj: Raven,
			time: 60,
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Sniper,
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
			obj: ScrapBoss,
			time: 70,
			xx: centerX,
			yy: centerY
		};
		i++;
		repeat(4)
		{
			wave[i] = {
				obj: Raven,
				time: 7,
			};
			i++;
		};
		repeat(4)
		{
			wave[i] = {
				obj: Sniper,
				time: 8,
			};
			i++;
		};
		wave[i] = {
				obj: Raven,
				time: 160,
			};
			i++;
		wave[i] = {
			obj: HealthChest,
			time: 40,
			xx: centerX,
			yy: centerY+32
		};
		i++;
		wave[i] = {
			obj: AssassinBoss,
			time: 240,
			xx: centerX,
			yy: centerY
		};
		i++;
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
			obj: LilHunter,
			time: 300,
			xx: centerX,
			yy: centerY
		};
		
	break;
}
waveLength = array_length(wave);
UberCont.crownVaultChallenge += 0;
if UberCont.crownVaultChallenge > 1
{
	UberCont.crownVaultChallenge = 0;	
}
//Start it
alarm[3] = 5;//Tell time is the difference between these two numbers
alarm[0] = 20;
alarm[4] = 5;//U a quiter?
