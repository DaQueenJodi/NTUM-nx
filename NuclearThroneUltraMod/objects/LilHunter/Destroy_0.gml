if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(LilHunter) == 1
with MusCont
{
audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
scrBusinessHogGoldChest();
scrDrop(200,0)
scrDrop(10,2)
instance_create(x,y,Explosion)
with instance_create(x,y,LilHunterDie)
team = other.team
if instance_exists(Player)
Player.kills += 1
else
BackCont.kills += 1
UberCont.ctot_kill[UberCont.race] += 1

snd_play(snd_dead)

Sleep(20+size*15)


scrEnemyDeathEvent();

//drop timebomb??
if(random(50)<1){//2
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = 192
name = wep_name[192]
ammo = 0
type = wep_type[192]
curse = 0
sprite_index = wep_sprt[192]
}}


with Marker
        {
        
        if other.id=target.id
        {
        with Player
        {
        lillhuntermarked=true;
        }
        }
        
        }

