scrDrop(20,2)
scrDrop(40,1)

//UNLOCK GOOD OL' HUMPHRY
scrUnlockCharacter(26,"FOR KILLING BIG FISH");

//drop golden oopsgun?
if instance_exists(Player)
{
if(random(70)<1&&Player.loops<1){
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = 298
name = wep_name[298]
ammo = 0
type = wep_type[298]
curse = 0
sprite_index = wep_sprt[298]
}}
}
event_inherited()
repeat(8)
{
with instance_create(x,y,Dust)
{motion_add(random(360),1+random(5))
}
}
scrBusinessHogGoldChest();
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossDead
snd_play(song)
//snd_loop(amb)

audio_master_gain(max(0,sqrt(UberCont.opt_sfxvol)))

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}
snd_play(sndBossWin);

