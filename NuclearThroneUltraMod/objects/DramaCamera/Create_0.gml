if UberCont.opt_bossintro=0{
instance_destroy();
exit;}



urgent = 2
alarm[0] = 2;

widescreen = 0


name="UNKNOWN STRING!#PLS REPORT @ERDEPPOL#HAS SOMETHING TO DO WITH BOSSES"

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
if Player.area = 2
{
//with instance_create(x,y,Drama)
name = "SEWER FISH"
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
name = "BIG ASS ASSASSIN"
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
name = choose("BIG DOG AGAIN","BIG DOG AGAIN","BIG DOG AGAIN","BIG DOG AGAIN","BIG DOG AGAIN","DO IT AGAIN","RESPAWN!","AGAIN","NOT HYPERCRYSTAL","DOGGY","BIG DOG AGAIN");
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
//with instance_create(x,y,Drama)
name = "BIG MACHINE"
}
if Player.area = 112
{
//with instance_create(x,y,Drama)
name = "INVERTED MACHINE"
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
}

}
with instance_create(x,y,Drama)
name=other.name;

__view_set( e__VW.XView, 0, x-(__view_get( e__VW.WView, 0 )*0.5) );
__view_set( e__VW.YView, 0, y-(__view_get( e__VW.HView, 0 )*0.5) );

if instance_exists(Player)
{
    ///
    with MusCont
    {
    audio_stop_all()
    //optimise 
    
    //sound_discard(song)
    //sound_discard(amb)
    
    if Player.area = 1 || Player.area = 105
    song = musBoss1;
    if Player.area = 3 || Player.area = 106
    song = musBoss2;
    if Player.area = 5 || Player.area = 107
    song = musBoss3;
    if Player.area = 6 || Player.area = 112
    song = musBoss7;
    if Player.area = 7 || Player.area = 108
    song = musPurpleDragonBoss;
    if Player.area = 8 || Player.area = 109
    song = musBoss6B;
    if Player.area = 101 || Player.area = 2
    song = musBoss1;
    snd_loop(song)
    snd_loop(amb)
    audio_master_gain(max(0,sqrt(UberCont.opt_sfxvol)))
    
    audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);
    
    audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);
    
    //audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
    }

}




