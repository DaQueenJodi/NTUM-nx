if(instance_exists(Player)){
if Player.ammo[Player.wep_type[Player.wep]] = Player.typ_amax[Player.wep_type[Player.wep]] or Player.ammo[Player.wep_type[Player.bwep]] = Player.typ_amax[Player.wep_type[Player.bwep]]
type = choose(1,2,3,4,5)
else if Player.bwep != 0
type = choose(Player.wep_type[Player.wep],Player.wep_type[Player.bwep])
else
type = Player.wep_type[Player.wep]

if type = 0
type = choose(1,2,3,4,5)

extra = 0
//RUSH CROWN
if Player.crown = 4
extra = 1

Player.ammo[type] += Player.typ_ammo[type]+extra

if Player.ammo[type] > Player.typ_amax[type]
Player.ammo[type] = Player.typ_amax[type]


dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(Player.typ_ammo[type]+extra)+" "+string(Player.typ_name[type])
if Player.ammo[type] = Player.typ_amax[type]
dir.mytext = "MAX "+string(Player.typ_name[type])

snd_play(sndAmmoPickup)
instance_destroy()

instance_create(x,y,SmallChestPickup)
}
/*
ang = random(360)
repeat(10)
{
with instance_create(x,y,Bullet1)
{motion_add(Player.ang,12+random(4))
image_angle = direction
team =2}
ang += 36
}*/

/* */
/*  */
