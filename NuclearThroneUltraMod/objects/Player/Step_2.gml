/// @description WepPickup
if instance_exists(WepPickup){

if point_distance(x,y,instance_nearest(x,y,WepPickup).x,instance_nearest(x,y,WepPickup).y)<36
{

targetPickup=instance_nearest(x,y,WepPickup);


//first get ammo
if ultra_got[68]=0
{
    if targetPickup.ammo > 0 and wep_type[targetPickup.wep] != 0
    {
    ammo[wep_type[targetPickup.wep]] += typ_ammo[targetPickup.wep_type[targetPickup.wep]]*2
    if ammo[wep_type[targetPickup.wep]] > typ_amax[targetPickup.wep_type[targetPickup.wep]]
    ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
    
    
    dir = instance_create(x,y,PopupText)
    dir.mytext = "+"+string(typ_ammo[wep_type[targetPickup.wep]]*2)+" "+string(typ_name[wep_type[targetPickup.wep]])
    if ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
    dir.mytext = "MAX "+string(typ_name[wep_type[targetPickup.wep]])
    targetPickup.ammo = 0
    }
}
else
{

    if targetPickup.ammo > 0 and wep_type[targetPickup.wep] != 0
    {
    ammo[wep_type[targetPickup.wep]] += typ_ammo[targetPickup.wep_type[targetPickup.wep]]*3
    if ammo[wep_type[targetPickup.wep]] > typ_amax[targetPickup.wep_type[targetPickup.wep]]
    ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
    
    var allammotypes=5;
    repeat(5)
    {
    ammo[allammotypes] += typ_ammo[allammotypes]
    if ammo[allammotypes] > typ_amax[allammotypes]
    ammo[allammotypes] = typ_amax[allammotypes]
    allammotypes--;
    }
    
    
    dir = instance_create(x,y,PopupText)
    dir.mytext = "+"+string(typ_ammo[wep_type[targetPickup.wep]]*4)+" "+string(typ_name[wep_type[targetPickup.wep]])
    if ammo[wep_type[targetPickup.wep]] = typ_amax[targetPickup.wep_type[targetPickup.wep]]
    dir.mytext = "MAX "+string(typ_name[wep_type[targetPickup.wep]])
    targetPickup.ammo = 0
    
    
    repeat(2)
    instance_create(x,y,HPPickup)
    
var raddrop = 60;//robot 40
    
    do {if raddrop > 15
{raddrop -= 10
with instance_create(x,y,BigRad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(60/2)+3)
repeat(speed)
speed *= 0.9}}
}
until raddrop <= 15

repeat(raddrop)
{
with instance_create(x,y,Rad)
{motion_add(other.direction,other.speed)
motion_add(random(360),random(15/2)+3)
repeat(speed)
speed *= 0.9}
}
    
    }
    
    

}


if KeyCont.key_pick[p] = 1
{
if curse = 0||targetPickup.curse==curse or bwep = 0 || (cwep = 0 && ultra_got[31])//SWITCH OUR MODS DATA ASWELL!
{
instance_create(x,y,WepSwap)

if targetPickup.pickedup=false
weaponspickedup+=1;

if scrCheckGold(targetPickup.wep)
{
snd_play(sndGoldPickup);
//Unlock business hog
if targetPickup.wep != 39
scrUnlockCharacter(20,"FOR PICKING UP A GOLD WEAPON")
}

//GUN GAME
if weaponspickedup>=50
scrUnlockGameMode(11,"FOR PICKING UP 50 WEAPONS THIS RUN")

//favourable BUILD GAMMODE
if scrFavourableWeapons(targetPickup.wep)
scrUnlockGameMode(2,"FOR PICKING UP A FAVOURABLE WEAPON")

//SKINS
if targetPickup.wep=328//BLACK SWORD
scrUnlockBSkin(9,"FOR PICKING UP THE BLACK SWORD",0);

if targetPickup.wep=329//Dark sword
scrUnlockCSkin(9,"FOR TOUCHING DEATH ITSELF",0);

if scrToxicWeapons(targetPickup.wep) &&targetPickup.pickedup=false && race = 23
{
toxicweaponsfound++;
if toxicweaponsfound>=4
scrUnlockCSkin(23,"BY USING 4 TOXIC WEAPONS#IN ONE RUN AS FROG",0)
}

//some one wep only unlocks that odont really count as unlockables
if targetPickup.wep=298//golden oops gun
{
with UberCont
{
oneweponly298=1
scrSave();
}
}

if targetPickup.wep=315//moneygun
{
scrUnlockBSkin(20,"FOR STEALING THE MONEY GUN",0);
with UberCont
{
oneweponly315=1
scrSave();
}
}
if targetPickup.wep=329//dark sword
{
with UberCont
{
oneweponly329=1
scrSave();
}
}
if targetPickup.wep=177//time thrower
{
with UberCont
{
oneweponly177=1
scrSave();
}
}
if targetPickup.wep=192//time bomb
{
with UberCont
{
oneweponly192=1
scrSave();
}
}
if targetPickup.wep=69//oops gun
{
with UberCont
{
oneweponly69=1
scrSave();
}
}
if targetPickup.wep=75//idkwid
{
with UberCont
{
oneweponly75=1
scrSave();
}
}
if targetPickup.wep=264//broken ster gun
{
with UberCont
{
oneweponly298=1
scrSave();
}
}
if targetPickup.wep=328//black sword
{
with UberCont
{
oneweponly328=1
scrSave();
}
}
if targetPickup.wep=231//guitar
{
with UberCont
{
oneweponly231=1
scrSave();
}
}
if targetPickup.wep=263//electric guitar
{
with UberCont
{
oneweponly263=1
scrSave();
}
}
if targetPickup.wep=214//viking great axe
{
with UberCont
{
oneweponly214=1
scrSave();
}
}
if targetPickup.wep=316//hunter heavy sniper
{
with UberCont
{
oneweponly316=1
scrSave();
}
}


snd_play(sndWeaponPickup)
if bwep = 0
{bcurse = curse
bwep = wep
bwepmod1 = wepmod1;
bwepmod2 = wepmod2;
bwepmod3 = wepmod3;
bwepmod4 = wepmod4;
}
else if cwep = 0 && ultra_got[31]//robot ultra third wep
{ccurse = curse
cwep = wep
cwepmod1 = wepmod1;
cwepmod2 = wepmod2;
cwepmod3 = wepmod3;
cwepmod4 = wepmod4;
}
else
{
with instance_create(x,y,WepPickup)
{
pickedup=true;
scrWeapons()
wep = other.wep
name = wep_name[wep]
type = wep_type[wep]
curse = other.curse
wepmod1=other.wepmod1;
wepmod2=other.wepmod2;
wepmod3=other.wepmod3;
wepmod4=other.wepmod4;
/*WEAPON MODS
mod1[]
mod2[]
mod3[]
0 nothing
1 toxic
2 explosive
3 flame
4 frost
5 blood
6 lightning
7 kraken
*/


sprite_index = wep_sprt[wep]
ammo = 0
}
}
if targetPickup.wep = 239//ROCKET GLOVE GM UNLOCK
scrUnlockGameMode(13,"FOR PICKING UP A ROCKET GLOVE")

wep = targetPickup.wep
curse = targetPickup.curse
wepmod1 = targetPickup.wepmod1
wepmod2 = targetPickup.wepmod2
wepmod3 = targetPickup.wepmod3
wepmod4 = targetPickup.wepmod4
can_shoot = 1
reload = 0


if wep=298//golden oops gun
game_end();

//UNLOCK GOLDEN WEAPON
scrUnlockGoldWeapon();


snd_play(wep_swap[wep])

dir = instance_create(x,y,PopupText)
dir.mytext = string(wep_name[wep])+"!"

scrWeaponHold();
/*
if wep_type[wep] != 0 and wep != 24 and wep != 36 and wep != 53 && wep!=198 && wep!=222 && wep!=223//some melee exceptions
wepangle = 0
else if wepangle = 0
wepangle = choose(120,-120)*/

with targetPickup
instance_destroy()
}
}


}}

/* */
///tough shell
if (skill_got[31])
{
if ( prevhealth > my_health && hardshell == true )
{

    if (( prevhealth-my_health > 4 ) && ( prevhealth-4 != 0 ) && race = 25  )
    {
    my_health+=2;
    hardshell=false;
    }
    else if (( prevhealth-my_health > 2 ) && ( prevhealth-2 != 0 )  )
    {
    my_health+=1;
    hardshell=false;
    }
    
    if my_health>maxhealth
    my_health=maxhealth;
    
}

if (sprite_index!=spr_hurt)
hardshell=true;
}

/* */
///Rogue blast armour
if race=22
{

if my_health<prevhealth//&&sprite_index=spr_hurt
{
with instance_create(x,y,RogueExplosion)
{team=2;}

if ultra_got[86]//SUPER BLAST ARMOUR
{


var randir=random(360);
repeat(3)
{

with instance_create(x+lengthdir_x(16,randir),y+lengthdir_y(16,randir),RogueExplosion)
{team=2;}

randir+=360/3;
}

randir=random(360);
repeat(3)
{

with instance_create(x+lengthdir_x(32,randir),y+lengthdir_y(32,randir),RogueExplosion)
{team=2;}

randir+=360/3;
}


}


snd_play(sndIDPDNadeExplo);
}

}

/* */
///imunity codes
if ultra_got[48]&&lag>0
{
if my_health<prevhealth&&my_health!=maxhealth&&alarm[3]<1
{lag-=1;

/*if skill_got[28]//rage
{
if exception=false//no need for this exception?
rage=0;
}*/


alarm[3]=15;//before your lag lowers again}
my_health=prevhealth;
}
}

if race=16 || race = 17 || race = 19 || race = 20 || race = 21//Viking and Gunsmith use armour and Skeleton and businesshog actually
{
if armour>0
{

if my_health<prevhealth&&my_health!=maxhealth&&alarm[3]<1
{armour-=1;


/*if skill_got[28]//rage
{
if exception=false//No need for exception?
rage=0;
}*/


snd_play(sndHitMetal);
alarm[3]=5;//before your armour lowers again}
my_health=prevhealth;

scrBlankArmour();



}
if armour>maxarmour
armour=maxarmour;
}

}
if alarm[3]>0/*|| lag>0 */&&my_health!=maxhealth
{
if prevhealth>my_health
my_health=prevhealth;
}



if skill_got[22]//Stress Sharp teeth part
{
if my_health<prevhealth&&alarm[10]<1//I been hit
{
alarm[10]=60;
sharpteeth=prevhealth-my_health;
with enemy{
if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
{
if sprite_index!=spr_hurt{
snd_play(other.snd_hurt)
Sleep(10)
if other.race = 25
my_health -= other.sharpteeth*1.3//Sharp teeth's damage!
else
my_health -= other.sharpteeth*1.2//Sharp teeth's damage!
sprite_index = spr_hurt
image_index = 0
motion_add(other.direction,6)





with instance_create(x,y,SharpTeeth)
owner=other.id;
}
}}

}
}


if skill_got[12]//euphoria resistance?
{
if my_health<prevhealth&&!instance_exists(GenCont)&&!instance_exists(EuphoriaShield)&&!instance_exists(LevCont)&&exception=false
{
if skill_got[28]//rage
{
if my_health<prevhealth&&exception=false//I been hit
rage=0;
}

prevhealth=my_health;
if race=25
alarm[3]=25;
else
alarm[3]=19;//duration
instance_create(x,y,EuphoriaShield);//make sure you change speed of animation aswell when changing duration
}
}
/*else if skill_got[28]//rage
{
if my_health<prevhealth&&exception=false//I been hit
rage=0;
}


/* */
///strong spirit justasheep
if(my_health<=0 && maxhealth>0)
{

    if skill_got[25]//strong spirit
    {
    if strongspirit==true&&strongspiritused==false
    {
    snd_play(sndStrongSpiritLost);
    my_health=1;
    alarm[1]=20;//invincibility 
    strongspiritused=true;
    strongspirit=false;
    }
    }
    if ultra_got[103] && HumphrySkill>20 && (skill_got[25]=0||strongspiritused=true)//Humphry Protective mustache C
    {
    HumphrySkill=0;
    my_health=1;
    
    HumphryTB=1;//red colour
    
    alarm[1]=20;//invincibility 
    }
    
    if(alarm[1]>0)
    {
        my_health=1;
    }

}

if justAsheep=true{
with enemy{
target=-1;
}}

/* */
///rage
if skill_got[28]
{
if my_health<prevhealth&&exception=false//I been hit
rage=0;

}

/* */
///markforhpreduction
if markforhpreduction==true
{
markforhpreduction=false;
my_health--;
}

/* */
/*  */
