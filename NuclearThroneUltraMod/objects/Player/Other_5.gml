/// @description Black sword? and UNLOCKABLES
if area = 1 && instance_exists(WepPickup)
{
with WepPickup
{
if wep = 46
other.canblacksword=true
}
}

//UNLOCK GAME MODE CLAUSTROFOBIA
if seconds<12&&!instance_exists(MenuGen) &&!instance_exists(Menu) && ( my_health>0 ||bleed>0 )
{//CLAUSTROFOBIA GAMEMODE UNLOCK
if instance_exists(Portal)
{
if Portal.type==1
scrUnlockGameMode(6,"FOR COMPLETING A LEVEL#IN UNDER 10 SECONDS")
}
//else
//scrUnlockGameMode(6,"FOR COMPLETING A LEVEL#IN UNDER 10 SECONDS")
}

if seconds>600 &&!instance_exists(MenuGen) &&!instance_exists(Menu) && ( my_health>0 ||bleed>0 )
{//AGORAPHOBIA GAMEMODE UNLOCK
scrUnlockGameMode(20,"FOR TAKING MORE THE# TEN MINUTES TO FINISH THAT LEVEL")
}

if movethislevel==false&&race=15 &&!instance_exists(MenuGen) &&!instance_exists(Menu) &&  !instance_exists(Vlambeer)
{//ATOM TELEPORT ONLY GAMEMODE UNLOCK
scrUnlockGameMode(7,"FOR COMPLETING A LEVEL WITHOUT WALKING")
}
if race = 11 && bigbanditmarked=true && bigdogmarked=true &&
lillhuntermarked=true && bigmachinemarked=true &&
dragonmarked=true && chesirecatmarked=true
{//HUNTER MARK ONLY GM UNLOCK
scrUnlockGameMode(12,"FOR KILLING EVERY MAIN BOSS#WHILE MARKING THEM")
}

//SKINS
if ( firedthislevel=false && race = 10 && area <100 && ( area>6 || loops>0 )  )
scrUnlockBSkin(10,"FOR COMPLETING A MAIN LEVEL# AFTER THE LABS#WITHOUT FIRING AS REBEL",0);

if ( firedthislevel=false && race = 13 && area <100 && ( area>3 || loops>0 )  )
scrUnlockCSkin(13,"FOR COMPLETING A MAIN LEVEL# AFTER THE SCRAPYARD#WITHOUT FIRING AS SHEEP",0);

if ( firedthislevel=false && race = 15 && area <100 && ( area>2 || loops>0 )  )
scrUnlockBSkin(15,"FOR COMPLETING A MAIN LEVEL# AFTER THE SEWERS#WITHOUT FIRING AS ATOM",0);

if ( firedthislevel=false && race = 21 && loops>0 )
scrUnlockCSkin(21,"FOR COMPLETING A MAIN LEVEL ON#USING ONLY THE BEAM",0);

if ( firedthislevel=false && race = 24 && area <100 && ( area>2 || loops>0 )  )
scrUnlockCSkin(24,"FOR COMPLETING A MAIN LEVEL# AFTER THE SEWERS#WITHOUT FIRING AS ELEMENTOR",0);

if ( missedthislevel=false && race = 26 && area <100 && ( area>2 || loops>0 )  )
scrUnlockBSkin(26,"FOR COMPLETING A MAIN LEVEL# AFTER THE SEWERS#WITHOUT MISSING AS GOOD O'L HUMPHRY",0);



if crown = 4 && area !=100 && race = 15
rushcrownlevels++;

if rushcrownlevels=5
scrUnlockCSkin(15,"FOR COMPLETING 5 LEVELS IN A ROW#USING CROWN OF HASTE AS ATOM",0);

///next level what procedure

if ( loops mod 2 == 0  && loops>1)
{//check if loop is above loop 1 and an even number 2 4 6 8
scrNextLevelInverted();//even
} 
else
{
scrNextLevel();//odd
}

///at the end of a level stuff

if patience>0||ultra_got[0]=1
{
skillpoints+=patience;
skillsChosen-=patience;
patience=0;
}

invertedportalcounter=0;


if hard > UberCont.cbst_diff[race]
UberCont.cbst_diff[race] = hard

//CROWN OF LIFE
if crown = 2
my_health = maxhealth;
if my_health > maxhealth
my_health = maxhealth


//NOCHEST SHIT
if (instance_exists(WeaponChest) or instance_exists(BigWeaponChest))// and !(area = 1 and subarea = 1)
{
nochest += 1
}


if race=14//PANDA
{
    if level!=1 && ultra_got[56]=0
    {
    
        //primary
        if wep!=0{
        var dir= 0;
        var prevwep;
        
        if wep_area[wep]=-1//handling starting weapons
        wep_area[wep]=1
        
        prevwep=wep;
        
        //handling golden weapons
        if string_copy(wep_name[prevwep],0,4) = "GOLD"&&loops<1
        prevwep=9//minigun tier 6
        
        if ultra_got[55]
        {
        do {wep = round(random(maxwep-1)+1);dir+=1;
        if dir >999
        wep=prevwep;}
        until ( ( (wep_area[wep] = wep_area[prevwep]) || (wep_area[wep] = wep_area[prevwep+1]) || (wep_area[wep] = wep_area[prevwep+2]) )||(dir>1000)  && (wep_area[wep] != -1) )
        }
        else{
        do {wep = round(random(maxwep-1)+1);dir++;
        if dir >999
        wep=prevwep;}
        until ( (wep_area[wep] = wep_area[prevwep])||(dir>1000) && (wep_area[wep] != -1) )
        }
        
        //hold it properly now
        if wep_type[wep] != 0 and wep != 24 and wep != 36 and wep != 53 && wep!=198 && wep!=222 && wep!=223//some melee exceptions
        wepangle = 0
        else if wepangle = 0
        wepangle = choose(120,-120)
        
        
        }
        
        /*
        //secondary
        if bwep!=0{
        
        if wep_area[bwep]=99//handling starting weapons
        wep_area[bwep]=1;//Doesn't this add panda stick to the regular pool of weapons?
        
        prevwep=bwep;
        
        //handling golden weapons
        if string_copy(wep_name[prevwep],0,4) = "GOLD"&&loops<1
        prevwep=9//minigun tier 6

    
        var dir = 0;
        //do {bwep = round(random(maxwep-1)+1);dir++;}
        //until ( (wep_area[bwep] = wep_area[prevwep])||(dir>1000) )
        
        if ultra_got[55]
        {
        do {bwep = round(random(maxwep-1)+1);dir+=1;
        if dir >999
        bwep=prevwep;}
        until ( ( (wep_area[bwep] = wep_area[prevwep]) || (wep_area[bwep] = wep_area[prevwep+1]) || (wep_area[bwep] = wep_area[prevwep+2]) )||(dir>1000) )
        }
        else{
        do {bwep = round(random(maxwep-1)+1);dir++;
        if dir >999
        bwep=prevwep;}
        until ( (wep_area[bwep] = wep_area[prevwep])||(dir>1000) )
        }
        
        }*/
        //dont start empty handed
        if ( ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*3 )//if ammo below three times an ammo drop
        {ammo[wep_type[wep]]=typ_ammo[wep_type[wep]]*3;}
        
        //if ( ammo[wep_type[bwep]] < typ_ammo[wep_type[bwep]]*3 )
        //{ammo[wep_type[bwep]]=typ_ammo[wep_type[bwep]]*3;}
    }
}

if crown==10
hard++;


if UberCont.opt_gamemode=10//random levels
{
area=choose(1,2,3,4,5,6,7,8,choose(105,102,103,106,107,101,100,108,109,110,113),choose(105,102,103,106,107,101,100,108,109,110,113),
choose(105,102,103,106,107,101,100,108,109,110,113));

if rnglevelloop=18
{loops+=1;
rnglevelloop=0;}
rnglevelloop+=1;
subarea=choose(1,2,3);
}

if ultra_got[79]&&loops=2&&area==1&&subarea==1
{skillpoints+=1
skillsChosen=10;}

if race==21
{
audio_stop_sound(sndHorrorLoopTB);
audio_stop_sound(sndHorrorLoop);
horrorcharge=origincharge;
}


//Horror ultra E
if ultra_got[0]
{
var i = 0;
var j = false;
do
{
i++;
if ultra_got[i]
j=true;
}
until(i>=maxultra)

if j==false
{
skillsChosen=10;

//if ultra_got[79]
//ultra_got[79]=0;

}

}

oasis=false;

/* */
///looping!
if looping
{

if race = 11 && weaponspickedup<1
scrUnlockBSkin(11,"FOR LOOPING#WITHOUT PICKING UP A WEAPON#AS HUNTER",0);
if race = 9 //UNLOCK PANDA (LOOP WITH CHICKEN)
scrUnlockCharacter(14,"FOR LOOPING WITH CHICKEN");

//SKINNS
if race =3 && skill_got[19]
scrUnlockCSkin(3,"FOR LOOPING WITH EAGLE EYES#AS EYES",0);

if race = 4 && skill_got[1]=0 && skill_got[25]=0
scrUnlockBSkin(4,"FOR LOOPING WITHOUT#RHINO SKIN AND STRONG SPIRIT#AS MELTING",0);

if loops>1 && race = 4
scrUnlockCSkin(4,"FOR REACHING LOOP 3#AS MELTING ON 1HP EQUALITY",5);

if UberCont.opt_gamemode=14
scrUnlockBSkin(1,"FOR LOOPING ON GAMEMODE:#FISH'S PARTNER ONLY",14);

if race = 14 && fired=false
scrUnlockCSkin(14,"FOR LOOPING BY ONLY THROWING WEAPONS#AND NOT USING THEM",0)

looping=false;
    //if !instance_exists(Crown)
    //instance_create(x,y,Crown)
    UberCont.ctot_loop[race] += 1
    {loops += 1
        
        if race==9//Chicken maxhealth regain
            {
            if maxhealth<8 || (skill_got[1]==1&&maxhealth<12)
            {
            maxhealth+=2;
            if skill_got[1]==1//rhino skin
            {
            if maxhealth>12
            maxhealth=12;
            }
            else if maxhealth>8
            maxhealth=8;
            }
            }
            
        if loops=2&&UberCont.opt_gamemode != 15//not no mutations gamemode
        {
        if ultra_got[15]
        maxlevel=13;
        else
        maxlevel=11;
        
        skillsChosen=0;
        }
    }
    
    //uncurse some shit
    curse=0;
    bcurse=0;
    ccurse=0;
    
//drop VIKING GREAT AXE?
if race=16&&loops=1{
with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =214
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}
//DROP HUNTER HEAVY SNIPER
if race = 11 &&loops=1
{

with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =316
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}

}

//DROP CHICKEN DARK SWORD
if wep = 46 || bwep = 46 &&loops=1
{

with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =329
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}

}

//DROP BLACK SWORD
if loops=1 && canblacksword
{

with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =328
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}

}

//DROP GUITAR?
if race=1
{
if loops=1{
with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =231
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}
if loops=2{
with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =263
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}

}

//GOLDEN FROG PISTOL
if race = 23
{

if loops=1{
with instance_create(x,y,WepPickup)
{
persistent=true;
scrWeapons()
wep =349
name = wep_name[wep]
ammo = 0
type = wep_type[wep]
curse = 0
sprite_index = wep_sprt[wep]
}}

}
    
    if loops > UberCont.cbst_loop[race]&&UberCont.opt_gamemode=0
    UberCont.cbst_loop[race] = loops//this doesn't get saved if gamemode is not normal mode
    
    if  UberCont.opt_gamemode!=10
    {
        if loops>1
        {
            if ( ( loops & 1 ) == 1 ) {
            area=1
            // it's odd
            } else{
            // it's even go inverted
            area=105
            } 
        }
        else
        area=1;
    }
    
subarea = 1
    
}

/* */
/*  */
