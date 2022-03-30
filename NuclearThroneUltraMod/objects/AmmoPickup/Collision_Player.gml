//if max ammo?&&50% of time
var pt = other.wep_type[other.wep];//primary ammo type
var st = other.wep_type[other.bwep];//secondary ammo type
var pa = other.ammo[pt];//primary ammo
var sa = other.ammo[st];//secondary ammo
var pam = other.typ_amax[pt];//primary max ammo
var sam = other.typ_amax[st]//secondary max ammo
var ran = random(6);
if pa = pam or sa = sam && ran < 3
{
	if ran < 1
	{
		//Chance to top up weapon that is not full
		if (pa == pam) && sa < sam
			type = st;
		else if (pa < pam) && sa == sam
			type = pt;
		else
			type = choose(1,2,3,4,5);
	}
	else
	{
		type = choose(1,2,3,4,5)
	}
}
else if other.bwep != 0
{
	//Chance to give ammo which you need most
	if ran < 1
	{
		if pt == 0
		{
			type = st;
		}
		else if st == 0
		{
			type = pt;
		}
		else
		{
			var pap = pa/pam;//primary ammo percentage
			var sap = sa/sam;//secondary ammo percentage
			if pap < sap
			{
				type = pt;	
			}
			else
			{
				type = st;	
			}
		}
	}
	else
	{
		type = choose(pt,st)
	}
}
else
	type = pt

//Roids get loaded ultra
if ( Player.ultra_got[26] && other.wep!=0 )
type = pt;

if type == 0
type = choose(1,2,3,4,5)

extra = 0
//RUSH CROWN
if Player.crown = 4
extra = 1
if Player.race=12 && Player.skill_got[5]=0//Yung Cuz Passive
extra+=other.typ_ammo[type]*(instance_number(YungCuzDupe)*0.5);
if Player.race=12 && Player.skill_got[5]=1//Yung Cuz Thronebutt
extra+=other.typ_ammo[type]*(instance_number(YungCuzDupe));

if UberCont.opt_gamemode == 9 //Casual mode
	extra +=1;

var gain_multiplier = 1

if cursed
gain_multiplier += 0.5
if supercursed
gain_multiplier += 0.5

other.ammo[type] += floor((other.typ_ammo[type]+extra) * gain_multiplier)

if other.ammo[type] > other.typ_amax[type]
other.ammo[type] = other.typ_amax[type]

if (UberCont.opt_ammoicon)
{
	dir = instance_create(x,y,PopupText)
	dir.sprt = sprAmmoIconsPickup
	dir.ii = type-1;
	dir.mytext = "+"+string(floor((other.typ_ammo[type]+extra) * gain_multiplier))//+string(other.typ_name[type])
	if other.ammo[type] = other.typ_amax[type]
	dir.mytext = "MAX"//+string(other.typ_name[type])
	snd_play(sndAmmoPickup)
}
else
{
	dir = instance_create(x,y,PopupText)
	dir.mytext = "+"+string(floor((other.typ_ammo[type]+extra) * gain_multiplier))+" "+string(other.typ_name[type])
	if other.ammo[type] = other.typ_amax[type]
	dir.mytext = "MAX "+string(other.typ_name[type])

	snd_play(sndAmmoPickup)
}

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
