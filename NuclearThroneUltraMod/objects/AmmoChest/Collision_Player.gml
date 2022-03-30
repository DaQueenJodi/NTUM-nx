if !instance_exists(GenCont)
{
if mediumchest==0{
if other.wep_type[other.wep] = 0 or other.ammo[other.wep_type[other.wep]] = other.typ_amax[other.wep_type[other.wep]]
type = choose(1,2,3,4,5)
else
type = other.wep_type[other.wep]

other.ammo[type] += other.typ_ammo[type]*2
if other.ammo[type] > other.typ_amax[type]
other.ammo[type] = other.typ_amax[type]

	if (UberCont.opt_ammoicon)
	{
		dir = instance_create(x,y,PopupText)
		dir.sprt = sprAmmoIconsPickup
		dir.ii = type-1;
		dir.mytext = "+"+string(other.typ_ammo[type]*2)
		if other.ammo[type] = other.typ_amax[type]
		dir.mytext = "MAX"
	}
	else
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(other.typ_ammo[type]*2)+" "+string(other.typ_name[type])
		if other.ammo[type] = other.typ_amax[type]
		dir.mytext = "MAX "+string(other.typ_name[type])
	}
}
else{//ROIDS ULTRA B
var i;
i=0;
repeat(5)
{

i+=1;

type = i;

other.ammo[type] += other.typ_ammo[type]*2
if other.ammo[type] > other.typ_amax[type]
other.ammo[type] = other.typ_amax[type]

	if (UberCont.opt_ammoicon)
	{
		dir = instance_create(x,y,PopupText)
		dir.sprt = sprAmmoIconsPickup
		dir.ii = type-1;
		dir.mytext = "+"+string(other.typ_ammo[type]*2);
		if other.ammo[type] = other.typ_amax[type]
			dir.mytext = "MAX";
	}
	else
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(other.typ_ammo[type]*2)+" "+string(other.typ_name[type])
		if other.ammo[type] = other.typ_amax[type]
			dir.mytext = "MAX "+string(other.typ_name[type])
	}
}
}
snd_play(sndAmmoChest)
instance_destroy()
}


/*
ang = random(360)
repeat(20)
{
with instance_create(x,y,Bullet1)
{motion_add(other.ang,12+random(4))
image_angle = direction
team =2}
ang += 18
}*/

/* */
/*  */
