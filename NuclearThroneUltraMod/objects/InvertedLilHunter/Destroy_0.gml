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
with Player
{

scrUnlockCSkin(11,"FOR DEFEATING INVERTED LIL' HUNTER#IN HUNTER ONLY SHOOT WHEN MARKED",12)

}
scrBusinessHogGoldChest();
scrDrop(200,0)
scrDrop(10,2)
instance_create(x,y,Explosion)
with instance_create(x,y,InvertedLilHunterDie)
team = other.team
if instance_exists(Player)
Player.kills += 1
else
BackCont.kills += 1
UberCont.ctot_kill[UberCont.race] += 1

snd_play(snd_dead)

Sleep(20+size*15)
if instance_exists(Player)
{
if Player.race = 4
raddrop += 1
}

do {if raddrop > 15
{raddrop -= 10
with instance_create(x,y,BigRad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+2)
repeat(speed)
speed *= 0.9}}
}
until raddrop <= 15

repeat(raddrop)
{
with instance_create(x,y,Rad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(other.raddrop/2)+2)
repeat(speed)
speed *= 0.9}
}

//SOME KILLS REGENERATE AMMO
if instance_exists(Player)
{
if Player.skill_got[6] = 1 and random(12) < 1
{
type = choose(1,2,3,4,5)

Player.ammo[type] += round(Player.typ_ammo[type]/2)
if Player.ammo[type] > Player.typ_amax[type]
Player.ammo[type] = Player.typ_amax[type]


dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(round(Player.typ_ammo[type]/2))+" "+string(Player.typ_name[type])
if Player.ammo[type] = Player.typ_amax[type]
dir.mytext = "MAX "+string(Player.typ_name[type])
}

//SOME KILLS REGENERATE HEALTH
if Player.skill_got[7] = 1 and random(15) < 1
{
num = 1
Player.my_health += num
if Player.my_health > Player.maxhealth
Player.my_health = Player.maxhealth

dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(num)+" HP"
if Player.my_health = Player.maxhealth
dir.mytext = "MAX HP"
}
}

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

if instance_exists(Marker)
{
    if place_meeting(x,y,Marker)
    {
        with Player
        {
        
        lillhuntermarked=true;
        
        }
    }
}

