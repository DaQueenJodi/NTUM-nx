scrDrop(20,0)
scrDrop(80,0)

scrBusinessHogGoldChest();
event_inherited()

with Corpse
{
//Big Assassins corpse doesnt move
if mask_index=other.mask_index
speed=0;

}
if !instance_exists(SurvivalWave)
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_master_gain(max(0,sqrt(UberCont.opt_sfxvol)))

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
snd_play(sndBossWin);

