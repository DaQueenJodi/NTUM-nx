if UberCont.opt_gamemode != 25
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
repeat(2)
scrDrop(200,0)

scrDrop(0,10)

scrBusinessHogGoldChest();


//drop oopsgun?
if(random(50)<1){
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = 69
name = wep_name[69]
ammo = 0
type = wep_type[69]
curse = 0
sprite_index = wep_sprt[69]
}}
event_inherited()

if oasis
{
instance_create(x,y,Portal);
with Player
oasis=true;
}

with Marker
        {
        
        if other.id=target.id
        {
        with Player
        {
        bigbanditmarked=true;
        }
        }
        
        }

