event_inherited()

scrEndBoss();

scrUnlockGameMode(22,"FOR KILLING#THE INVERTED CHESHIRE CAT");

Sleep(200)
scrBusinessHogGoldChest();
instance_create(x,y,ChesireCatExplosion);

scrDrop(10,1)

scrDrop(100,0)
scrDrop(20,0)
scrDrop(50,40)
scrDrop(50,100)


with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = sndBossWin
snd_play(song)
//snd_loop(amb)

audio_master_gain(max(0,sqrt(UberCont.opt_sfxvol)))

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}

if instance_exists(Marker)
{
    if place_meeting(x,y,Marker)
    {
        with Player
        {
        
        chesirecatmarked=true;
        
        }
    }
}

