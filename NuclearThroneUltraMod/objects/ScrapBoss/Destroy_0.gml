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

scrDrop(0,100)
scrDrop(0,50)
scrBusinessHogGoldChest();
Sleep(50)
instance_create(x,y,BigDogExplo)
event_inherited()

with instance_nearest(x,y,Corpse)
instance_destroy()

img = 0
repeat(6)
{
with instance_create(x,y,ScrapBossCorpse)
{
size = other.size-1
motion_add(random(360),5)
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead
image_index = other.img
image_xscale = other.right
if speed > 16
speed = 16
}
img += 1
}

//drop IDKWID?
if(random(200)<1){
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep =75
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}


with Marker
        {
        
        if other.id=target.id
        {
        with Player
        {
        bigdogmarked=true;
        }
        }
        
        }


