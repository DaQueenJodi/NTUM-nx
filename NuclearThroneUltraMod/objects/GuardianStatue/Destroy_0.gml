if my_health < maxhealth
{

with MusCont
{
audio_stop_all()
//optimise sound_discard(song)
//optimise sound_discard(amb)
song = mus100b;
snd_loop(song)
snd_loop(amb)
audio_master_gain(max(0,sqrt(UberCont.opt_sfxvol)))

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}


with GuardianStatue
{
if id != other.id
instance_destroy()}

}

instance_create(x,y,CrownGuardian)

//with CrownPickup
//instance_destroy()



