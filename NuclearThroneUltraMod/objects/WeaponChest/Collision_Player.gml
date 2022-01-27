if !instance_exists(GenCont)
{
repeat(1+mediumchest){
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep=other.wep

name = wep_name[wep]
ammo = 50
type = wep_type[wep]
curse = other.curse
sprite_index = wep_sprt[wep]
}
}
snd_play(sndWeaponChest)
instance_destroy()
}

