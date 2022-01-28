if !instance_exists(Player){exit;}

repeat(1+Player.ultra_got[25]){
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

if curse = 1
{
repeat(10)
instance_create(x+random(16)-8,y+random(16)-8,Curse)
}
snd_play(sndWeaponChest)
instance_destroy()

