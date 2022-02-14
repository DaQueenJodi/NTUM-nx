//if max ammo?&&50% of time
if other.ammo[other.wep_type[other.wep]] = other.typ_amax[other.wep_type[other.wep]] or other.ammo[other.wep_type[other.bwep]] = other.typ_amax[other.wep_type[other.bwep]] && random(2)<1
type = choose(1,2,3,4,5)
else if other.bwep != 0
type = choose(other.wep_type[other.wep],other.wep_type[other.bwep])
else
type = other.wep_type[other.wep]

//Roids get loaded ultra
if ( Player.ultra_got[26] && other.wep!=0 )
type = other.wep_type[other.wep];

if type = 0
type = choose(1,2,3,4,5)

extra = 0
//RUSH CROWN
if Player.crown = 4
extra = 1
if Player.race=12 && Player.skill_got[5]=0//Yung Cuz Passive
extra+=other.typ_ammo[type]*(instance_number(YungCuzDupe)*0.5);
if Player.race=12 && Player.skill_got[5]=1//Yung Cuz Thronebutt
extra+=other.typ_ammo[type]*(instance_number(YungCuzDupe));


other.ammo[type] += other.typ_ammo[type]+extra

if other.ammo[type] > other.typ_amax[type]
other.ammo[type] = other.typ_amax[type]


dir = instance_create(x,y,PopupText)
dir.mytext = "+"+string(other.typ_ammo[type]+extra)+" "+string(other.typ_name[type])
if other.ammo[type] = other.typ_amax[type]
dir.mytext = "MAX "+string(other.typ_name[type])

snd_play(sndAmmoPickup)
instance_destroy()

instance_create(x,y,SmallChestPickup)

/*
ang = random(360)
repeat(10)
{
with instance_create(x,y,Bullet1)
{motion_add(other.ang,12+random(4))
image_angle = direction
team =2}
ang += 36
}*/

/* */
/*  */
