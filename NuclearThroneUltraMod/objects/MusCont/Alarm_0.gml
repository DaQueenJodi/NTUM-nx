
audio_stop_all()

song = musThemeB;

snd_loop(song)
snd_loop(amb)


audio_master_gain(max(0,sqrt(UberCont.opt_sfxvol)))

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

