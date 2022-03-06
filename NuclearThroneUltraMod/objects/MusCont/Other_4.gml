oldarea = area
if instance_exists(Player)
{
	area = Player.area;
	alarm[0] = 0;
}
debug("area: ",area);
if UberCont.opt_gamemode == 25 && area != 0
{
    audio_stop_sound(song);
    song = mus100;
    amb = amb100;
    if !audio_is_playing(song)
    snd_loop(song)
    if !audio_is_playing(amb)
    snd_loop(amb)


    audio_master_gain(max(0, sqrt(UberCont.opt_sfxvol)))

    audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);

    audio_sound_gain(amb, max(0, sqrt(UberCont.opt_ambvol)), 0);

    audio_sound_gain(sndBossWin, max(0, sqrt(UberCont.opt_musvol)), 0);
	
    exit;
}
if UberCont.opt_gamemode == 8 && area != 0
{
    audio_stop_sound(song);
    audio_stop_sound(amb);

    song = sndChubbyEmuSong;
    if !audio_is_playing(song)
    snd_loop(song)

    audio_master_gain(max(0, sqrt(UberCont.opt_sfxvol)))

    audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);

    audio_sound_gain(amb, max(0, sqrt(UberCont.opt_ambvol)), 0);

    audio_sound_gain(sndBossWin, max(0, sqrt(UberCont.opt_musvol)), 0);
    exit;
}

if oldarea != area || area == 0 or !audio_is_playing(song) or!audio_exists(song) || song == musBossWin {

    dir = 1
    deaths = 0
    repeat(UberCont.racemax)
    deaths += UberCont.ctot_dead[dir]


    audio_stop_all();

    if (confirmSound) {
        snd_play_2d(confirmSound);
        confirmSound = false;
    }
    if area = 0 {

        song = musThemeA;

        amb = amb0;
    }
    if area = 1 {

        if deaths > 50 and random(20) < 1
        song = mus1b;
        else
            song = mus1;

        amb = amb1;
    }
    if area = 105 //inverted desert
    {

        song = mus1b;

        amb = amb1;
    }
    if area = 2 {

        song = mus2;

        amb = amb2;
    }
    if area = 110 {

        song = musInvertedSewers;

        amb = amb102;
    }
    if area = 3 {

        if deaths > 50 and random(20) < 1
        song = mus3b;
        else
            song = mus3;

        amb = amb3;
    }
    if area = 4 {

        song = mus4;

        amb = amb4;
    }
    if area = 5 {

        if deaths > 50 and random(20) < 1
        song = mus5b;
        else
            song = mus5;

        amb = amb5;
    }
    if area = 6 {

        song = mus6;

        amb = amb6;
    }
    if area = 7 {

        song = musVulcano; //mus5b;

        amb = ambVulcano;
    }
    if area = 108 || area = 109 //inverted vulcano inverted wonderland
    {

        song = mus5b;

        amb = amb5;
    }
    if area = 8 {

        song = mus102

        amb = amb100;
    }
    if area = 9 {

        song = mus7;

        amb = amb7;
    }
    if area = 100 {

        song = mus100;

        amb = amb100;
    }
    if area = 102 {
        if (random(100) < 1)
            song = sndChubbyEmuSong;
        else
            song = mus102;

        amb = amb102;
    }
    if area = 103 || area = 104 {

        song = mus103;

        amb = amb100;
    }

    if area = 104 {
        song = mus107;

        amb = amb100;

    }

    if area = 106 //inverted desert
    {

        song = mus3b;

        amb = amb3;
    }

    if area = 107 //inverted frozen city
    {

        song = mus5b;

        amb = amb5;
    }

    if area = 101 //inverted frozen city
    {

        song = mus101;

        amb = amb101;
    }

    if area = 111 //inverted crystal caves
    {

        song = mus104; //cursed caves

        amb = amb104; //cursed caves
    }

    if area = 112 //inverted labs
    {

        song = mus106b; //popoland

        amb = amb106; //popoland
    }

    if area = 113 //banditland
    {
        song = musThemeP

        amb = amb0b
    }

    if area = 114//Jungle bugnle flungle drums yaya
    {
        song = mus105

        amb = amb105
    }
	
	if area = 10 //savanna
    {
        song = mus105

        amb = amb1
    }

    if area = 115 //cheese caves
    {
        song = mus104

        amb = amb104
    }


    snd_loop(song)
    snd_loop(amb)


    audio_master_gain(max(0, sqrt(UberCont.opt_sfxvol)))

    audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);

    audio_sound_gain(amb, max(0, sqrt(UberCont.opt_ambvol)), 0);

    audio_sound_gain(sndBossWin, max(0, sqrt(UberCont.opt_musvol)), 0);
    //audio_sound_gain(sndVaultBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
