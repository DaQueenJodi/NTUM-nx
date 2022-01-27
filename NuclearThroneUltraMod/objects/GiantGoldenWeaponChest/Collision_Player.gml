if !instance_exists(GenCont)
{

Player.nochest = 0
repeat(25)//25 weps holy shit
{
with instance_create(x+random(32)-16,y+random(32)-16,WepPickup)
{
scrWeapons()
wep=scrDecideWep(6);
name = wep_name[wep]
ammo = 50
curse = 0
type = wep_type[wep]
sprite_index = wep_sprt[wep]
}
}
snd_play(sndBigWeaponChest)
snd_play(Player.snd_chst)
instance_destroy()
}

