/// @description steal shit
if stolen<1
{
with other
{


//0 = melee 1 = bullets 2 = shells 3 = bolts 4 = explosives 5 = energy
//typ_ammo[0] = 333 typ_ammo[1] = 32 typ_ammo[2] = 8 typ_ammo[3] = 8 typ_ammo[4] = 6 typ_ammo[5] = 10

if instance_exists(Player)
{

if Player.loops>0&&random(3)<1
{

if bwep!=0
{
    //save weapon here
    //stolen weapon data
    other.wep=bwep;
    other.wepmod1=bwepmod1;
    other.wepmod2=bwepmod2;
    other.wepmod3=bwepmod3;
    other.curse=bcurse;
    
    dir= instance_create(x,y-8,PopupText)
    dir.mytext = "WEAPON STOLEN!"
    
    bwep=0;
}

}

}

    if ( ( ammo[wep_type[wep]]-other.typ_ammo[wep_type[wep]]*2 ) && wep_type[wep]!=0 )
    {
    ammo[wep_type[wep]]-=other.typ_ammo[wep_type[wep]]*2;
        
    dir = instance_create(x,y,PopupText)
    dir.mytext = "-"+string(other.typ_ammo[wep_type[wep]]*2)+" "+string(typ_name[wep_type[wep]])
    dir.colour=c_red;
    }
    else if bwep!=0
    {
    if ( (ammo[wep_type[bwep]]-other.typ_ammo[wep_type[bwep]]*2) && wep_type[bwep]!=0   )
    {
    ammo[wep_type[bwep]]-=other.typ_ammo[wep_type[bwep]]*2;
     
    dir= instance_create(x,y,PopupText)
    dir.mytext = "-"+string(other.typ_ammo[wep_type[bwep]]*2)+" "+string(typ_name[wep_type[bwep]])   
    dir.colour=c_red;
    //dir = instance_create(x,y,PopupText)
    //dir.mytext = "-"+string(other.typ_ammo[bwep_type[other.bwep]]*2)+" "+string(other.typ_name[bwep_type[other.wep]])
    }
    else
    {
    //save weapon here
    //stolen weapon data
    other.wep=bwep;
    other.wepmod1=bwepmod1;
    other.wepmod2=bwepmod2;
    other.wepmod3=bwepmod3;
    other.curse=bcurse;
    
    dir= instance_create(x,y,PopupText)
    dir.mytext = "WEAPON STOLEN!"
    dir.colour=c_red;
    
    bwep=0;
    }
    
    }
    


}
stolen=4;
alarm[1]=1;
}



