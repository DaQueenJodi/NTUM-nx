if sprite_index != sprProtoChestOpen
{
sprite_index = sprProtoChestOpen
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = other.wep
wepmod1=other.wepmod1
wepmod2=other.wepmod2
wepmod3=other.wepmod3
wepmod4=other.wepmod4
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}
instance_create(x,y,FXChestOpen)

snd_play(sndWeaponChest)
}

