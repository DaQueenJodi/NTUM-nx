scrDrop(100,100)
scrDrop(20,0)
if !isOneWeaponOnlyModes()
{
	with instance_create(x-8,y,WepPickup)
	{
		scrWeapons()
		wep = scrDecideWep(2, 1000, 0)
		name = wep_name[wep]
		ammo = 50
		curse = 0;
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
	}
}
//UNLOCK GOOD OL' HUMPHRY
scrUnlockCharacter(26,"FOR KILLING BIG FISH");

event_inherited()
repeat(8)
{
with instance_create(x,y,Dust)
{motion_add(random(360),1+random(5))
}
}
scrBusinessHogGoldChest();
if !instance_exists(SurvivalWave) && !instance_exists(WantBoss) && instance_number(BigFish) == 1
with MusCont
{
//optimise sound_discard(song)
//optimise sound_discard(amb)

audio_stop_sound(song);
song = musBossWin
snd_play_2d(song)
//snd_loop(amb)

audio_group_set_gain(agsfx,max(0, sqrt(UberCont.opt_sfxvol)),0);

audio_sound_gain(song,max(0,sqrt(UberCont.opt_musvol)),0);

audio_sound_gain(amb,max(0,sqrt(UberCont.opt_ambvol)),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);

}

