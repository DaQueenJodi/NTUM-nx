//WORK IN PROGRESS< GOTTA START USING REPLACE AND FIX THE MEMORY LEAKS

//DO YOU WANT MUSIC?
wantmusic = 1

//REAL STUFF
area = 0


audio_stop_all();
song = musThemeA;
amb = amb0;
snd_play(song)
snd_loop(amb)
alarm[0] = 1360
snd_play(sndRestart)

//variable used to allow confirmation sound to play
//written to by the CharSelect object
confirmSound = false;

//if file_exists("nomusic.txt") or file_exists("NOMUSIC.txt") or file_exists("NOMUSIC.TXT") or file_exists("nomusic.TXT")
//wantmusic = 0
//JW HACK:
//if UberCont.public = 0 wantmusic=1
//wantmusic = 1
if wantmusic = 0 {instance_destroy() exit;}

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);