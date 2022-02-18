/// @description Don't return instead create =pickup

with instance_create(x,y,WepPickup)
{
	oneweponly=false;
    image_angle=other.image_angle;
    scrWeapons()
    wep=other.wep
    name = wep_name[wep]
    ammo = 0
    type = wep_type[wep]
    curse = other.curse
    wepmod1=other.wepmod1;
    wepmod2=other.wepmod2;
    wepmod3=other.wepmod3;
    wepmod4=other.wepmod4;
    persistent=other.persistent;
    sprite_index = wep_sprt[wep]
}	
