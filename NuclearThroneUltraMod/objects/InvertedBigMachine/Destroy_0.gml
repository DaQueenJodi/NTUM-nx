scrDrop(100,0);
scrDrop(100,1);
scrDrop(50,40);

with Player
{
if race = 7 
scrUnlockCSkin(7,"FOR DEFEATING THE INVERTED BIG MACHINE#AS STEROIDS",0); 

}

scrBusinessHogGoldChest();

instance_create(x,y,BigDogExplo);
snd_play(sndExplosionXL);


mask_index=mskBigMachine;


with InvertedBigMachineLaser
instance_destroy();

with InvertedBigMachineTurret
instance_destroy();

with BigMachineMask
instance_destroy();

with LabTrap
instance_destroy();

//drop broken ster gun??
if(random(50)<1){//2
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = 264
name = wep_name[264]
ammo = 0
type = wep_type[264]
curse = 0
sprite_index = wep_sprt[264]
}}


with MusCont
{
audio_stop_sound(song)

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
        
        bigmachinemarked=true;
        
        }
    }
}

event_inherited()

