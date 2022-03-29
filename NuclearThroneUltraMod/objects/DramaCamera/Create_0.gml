if instance_exists(Player) && !instance_exists(SurvivalWave)
{
    ///
    with MusCont
    {
    audio_stop_all()
    //optimise 
    
    //sound_discard(song)
    //sound_discard(amb)
    var area = Player.area;
	var subarea = Player.subarea;
    if area = 1 || area = 105
    song = musBoss1;
    if area = 3 || area = 106
    song = musBoss2;
    if area = 5 || area = 107
    song = musBoss3;
    if area = 6 || area = 112
		song = musBoss7;
    if area = 7 || area = 108
		song = musPurpleDragonBoss;
    if area = 8 || area = 109
	{
		if (random(100) <1)
			song = sndChubbyEmuSong;
		else
			song = musBoss6B;
	}
	if area = 2
		song = musBoss5;
	if area == 4 || area == 115
		song = musBoss6;
	if area == 115
		song = musBoss6B;
	if area == 111
		song = choose(musBoss6,musBoss6B);
    if area = 101
		song = musBoss1;
	if area == 10
		song = musBoss3
    snd_loop(song)
    snd_loop(amb)
    //audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
	audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);
    
    audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
    
    audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);
    
    //audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
    }

}


if UberCont.opt_bossintro=0 || instance_exists(SurvivalWave) || UberCont.hadBossIntro {
instance_destroy();
exit;}
UberCont.hadBossIntro = true;
urgent = 2
alarm[0] = 2;

widescreen = 0


name="BOSS"

if instance_exists(Player)
{
if Player.area = 1
{
//with instance_create(x,y,Drama)
name = "BIG BANDIT"
}
if Player.area = 105
{
//with instance_create(x,y,Drama)
name = "INVERTED BIG BANDIT"
}
if Player.area = 2 || Player.area == 110
{
//with instance_create(x,y,Drama)
name = "MOM";
if random(30)<1
{
	name = choose("BALL MOM","MUMMY","FROG QUEEN","BALL MAMA",
	"PLEASE I'M A MOTHER#OF FIVE CHILDREN#DON'T KILL ME",
	"MISS. FROG#HAPPILY MARRIED","MOMMY BALL");	
}
}
if Player.area = 3
{
//with instance_create(x,y,Drama)
if Player.subarea = 3
{
if random(100)<1
name = "BIG D."
else
name = "BIG DOG"
}
else
{

if random(100)<1
name = choose("BIG ASS ASSASSIN","BIG ASS");
else
name = "BIG ASSASSIN"

}
}
if Player.area = 106
{
//with instance_create(x,y,Drama)
if Player.subarea = 3
name = "INVERTED BIG DOG"
else
name = "INVERTED BIG ASSASSIN"
}
if Player.area = 4
{
//with instance_create(x,y,Drama)
name = "HYPER CRYSTAL";
if random(90)<1
	name = choose("CRYSTAL'S MOM","HYPER RIFLE?","HYPER DIAMOND","LUIGI");
}
if Player.area = 111
{
name = "INVERTED HYPER CRYSTAL";
if random(90)<1
	name = choose("CRYSTAL'S MOM","HYPER RIFLE?","HYPER DIAMOND","LUIGI");
}
if Player.area = 5
{
//with instance_create(x,y,Drama)
if random(10000)<1
name= "GEORGE!"
else
name = "LIL HUNTER"
}
if Player.area = 107
{
//with instance_create(x,y,Drama)
name = "INVERTED LIL HUNTER"
}

if Player.area = 6 
{
	if Player.subarea == 2
	{
		name = "BIG MACHINE";
		if random(120) < 1
			name = choose("METAL BLOCK","TINY THRONE");
	}
	else
	{
		name = "TECHNOMANCER";
		if random(80) < 1
			name = choose("TECHROMANCER","LITTLE SHIT");
	}
}
if Player.area = 112
{
	if Player.subarea == 2
	{
		name = "INVERTED MACHINE"
		if random(120) < 1
			name = choose("TINY ROOM OF DOOM","WHITE MACHINE","FUCK THE SYSTEM");
	}
	else
	{
		name = "TECHNOMANCER";
		if random(80) < 1
			name = choose("TECHROMANCER","ALMOST INVERTED TECHNOMANCER");
	}

}

if Player.area = 7
{
//with instance_create(x,y,Drama)

    if random(100)<1
    name="THE DIRTY DRAGON";
    else
    name = "PURPLE DRAGON"
}
if Player.area = 108
{
//with instance_create(x,y,Drama)

    if random(100)<1
    name="THE DIRTIER DRAGON";
    else
    name = "INVERTED DRAGON"
}
if Player.area = 8
{
//with instance_create(x,y,Drama)
if Player.subarea=2
    {
    name = "LIL HUNTER"
    }
    else
    {
    
    if random(100)<1
    name="AWH KITTY";
    else
    name = "CHESHIRE CAT"

    }
}


if Player.area = 109
{
name = "INVERTED CHESHIRE CAT"
}

if Player.area = 101
{
//with instance_create(x,y,Drama)
name = "BIG FISH"
}

if Player.area == 9
{
	name = "THE NUCLEAR THRONE";
	if random(200) < 1
		name = "SON OF A BITCH";
}
if Player.area == 10
{
	name = "BIG VULTURE";
}

}
with instance_create(x,y,Drama)
name=other.name;

__view_set( e__VW.XView, 0, x-(__view_get( e__VW.WView, 0 )*0.5) );
__view_set( e__VW.YView, 0, y-(__view_get( e__VW.HView, 0 )*0.5) );






