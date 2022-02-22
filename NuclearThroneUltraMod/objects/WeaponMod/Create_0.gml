image_speed=0;

wepmod=scrMods();
if instance_exists(WeaponMod)
{
	var nearest = instance_nearest_notme(WeaponMod);
	if nearest != noone
	{
		with instance_nearest_notme(WeaponMod)
		{
			while wepmod == other.wepmod
			{
			 wepmod += scrMods();
			}
		}
	}
}

wepmod1=0;
wepmod2=0;
wepmod3=0;
wepmod4=0;



switch (wepmod)
{
case 1:
modname="[TOXIC]"
break;
case 2:
modname="[EXPLOSIVE]"
break;
case 3:
modname="[FLAME]"
break;
case 4:
modname="[FROST]"
break;
case 5:
modname="[BLOOD]"
break;
case 6:
modname="[LIGHTNING]"
break;
case 7:
modname="[KRAKEN]"
break;
case 8:
modname="[SWARM]"
break;
case 9:
modname="[BOUNCER]"
break;
case 10:
modname="[SHOTGUN]"
break;
case 11:
modname="[PROJECTILE SPEED]"
break;
case 12:
modname="[RELOAD SPEED]"
break;
case 13:
modname="[HOMING]"
break;
case 14:
modname="[RADIATION]"
break;
case 15:
modname="[SPLINTER]"
break;
case 16:
modname="[MORPH]"
break;
case 17:
modname="[PICKUPS DROP]"
break;
case 18:
modname="[WEAPONS DROP]"
break;
default:
modname="UNKNOWN MOD?#IF YOU SEE THIS SOMETHING IS WRONG#PLS REPORT @ERDEPPOL"
break;
}
name="##MODIFY WEAPON#"+modname;


wave=random(100);

