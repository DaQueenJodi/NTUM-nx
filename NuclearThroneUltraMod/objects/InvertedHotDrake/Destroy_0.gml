with MusCont
{

audio_stop_sound(song);
song = sndBossWin
snd_play(song)
//snd_loop(amb)

audio_master_gain(max(0,sqrt(UberCont.opt_sfxvol)))

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
snd_play(sndDragonEmerge)
scrBusinessHogGoldChest();
scrDrop(100,0)
scrDrop(50,90)
scrDrop(50,10)

event_inherited()

repeat(50){//flame wall of death baby yes 
with instance_create(x,y+96,TrapFire)
    {
    sprite_index = sprFireLilHunter
    motion_add(other.direction+random(180)-90,3+random(8))
    image_angle = direction
    team = other.team
    }
}
if audio_is_playing(sndDragonLoop)
audio_stop_sound(sndDragonLoop)

//drop Time Thrower?
if(random(50)<1){
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep =177
name = wep_name[177]
ammo = 0
type = wep_type[177]
curse = 0
sprite_index = wep_sprt[177]
}}

if instance_exists(Marker)
{
    if place_meeting(x,y,Marker)
    {
        with Player
        {
        
        dragonmarked=true;
        
        }
    }
}

