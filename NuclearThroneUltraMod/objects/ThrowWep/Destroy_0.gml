with Player
{

    if wep=0&&other.dontteleport==false
    {
    wep=other.wep;
    curse = other.curse
    wepmod1=other.wepmod1;
    wepmod2=other.wepmod2;
    wepmod3=other.wepmod3;
    wepmod4=other.wepmod4;
    
    //hold it properly now
    scrWeaponHold();
    /*if wep_type[wep] != 0 and wep != 24 and wep != 36 and wep != 53 && wep!=198 && wep!=222 && wep!=223//some melee exceptions
    wepangle = 0
    else if wepangle = 0
    wepangle = choose(120,-120)*/
    
    exit;
    }
    else if bwep=0 &&other.dontteleport==false
    {
    bwep=other.wep;
    bcurse = other.curse
    bwepmod1=other.wepmod1;
    bwepmod2=other.wepmod2;
    bwepmod3=other.wepmod3;
    bwepmod4=other.wepmod4;
    exit;
    }

}

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

/* */
/*  */
