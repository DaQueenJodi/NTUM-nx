/// @description start of the room
//if area=104
//visitedCrib=true
restarted = false;
if !instance_exists(PlayerAlarms)
	instance_create(x,y,PlayerAlarms);

if UberCont.opt_gamemode=1
{
if wep =0 
wep=oneweponlywep;

if bwep = 0 && race = 7 //roids secondary weapon
bwep=oneweponlywep;

scrWeaponHold();
}

if (area!=100 && area !=104)
{
firedthislevel=false;
missedthislevel=false;
movethislevel=false;
}
else
{
firedthislevel=true;
missedthislevel=true;
movethislevel=true;
}
portalstrikesusedthislevel=0;


//Unlock Angel
if skill_got[1] && skill_got[9] && skill_got[7] && skill_got[25]
scrUnlockCharacter(18,"FOR TAKING RHINO SKIN,#STRONG SPIRIT, BLOOD LUST#AND SECOND STOMACH")

if area = 2 && loops>0//UNLOCK LOOP START
scrUnlockGameMode(21,"FOR REACHING SEWERS LOOP 1")

if area=3&&level=1
{//NO MUTATIONS GAMEMODE
scrUnlockGameMode(15,"FOR REACHING THE SCRAPYARD ON LEVEL 1")
}
if area=4 && screenshake400=true
{//spiketraps gamemode
scrUnlockGameMode(16,"FOR REACHING CRYSTAL CAVES ON 400% SCREENSHAKE");
}

if area = 2//UNLOCK EYES
scrUnlockCharacter(3,"FOR REACHING THE SEWERS");

if area = 103//UNLOCK YV
scrUnlockCharacter(6,"FOR ENTERING THE MANSION");

if area = 6//UNLOCK ROIDS
scrUnlockCharacter(7,"FOR REACHING THE LABS");

if area = 3//UNLOCK ROBOT
scrUnlockCharacter(8,"FOR REACHING THE SCRAPYARD");

if area = 5//UNLOCK REBEL
scrUnlockCharacter(10,"FOR REACHING THE FROZEN CITY");

if area = 8//UNLOCK HORROR
scrUnlockCharacter(21,"FOR REACHING WONDERLAND");

//UNLOCK PANDA
if area == 114
{
	scrUnlockCharacter(14,"FOR VISITING THE JUNGLE");
}

if area == 115 && race == 2
{
	scrUnlockCSkin(2,"FOR REACHING CHEESE CAVES#AS CRYSTAL",0);	
}

//SKINS
if area = 111 && race = 2
scrUnlockBSkin(2,"FOR REACHING INVERTED CRYSTAL CAVES#AS CRYSTAL",0);

if area = 102 && race = 3
scrUnlockBSkin(3,"FOR REACHING PIZZA SEWERS#AS EYES",0);

if area =8 && race = 5 && UberCont.time_minutes<8
scrUnlockBSkin(5,"FOR REACHING WONDERLAND AS PLANT#IN UNDER 8 MINUTES",0);

if area = 104
scrUnlockBSkin(12,"FOR GOING INTO DA CRIB",0);

if area = 113
scrUnlockCSkin(10,"FOR DISCOVERING BANDITLAND",0);

if armour=5 && race =16
scrUnlockBSkin(16,"FOR GETTING THE MAXIMUM AMOUNT#OF ARMOUR POSSIBLE AS VIKING",0);

if skeletonlives=4
scrUnlockBSkin(19,"FOR HAVING FOUR LIVES",0);

if freezeframe400=true && race = 19 && area=7
scrUnlockCSkin(19,"FOR REACHING THE VOLCANO#ON 400% SCREENSHAKE#AS SKELETON",0);



if area > 100
secretlevelcount++

if secretlevelcount=3
{//UNLOCK RANDOM LEVELS GAMEMODE
scrUnlockGameMode(10,"FOR GOING TO THREE SECRET LEVELS")
}

seconds=0;
microseconds=0;

if instance_exists(Cursor)
Cursor.image_index=UberCont.opt_crosshair;

if area=100
crownvisits++;


if race=10//rebel hoody
{
    if bskin=1&&area=5||area=108//cold
    {
    spr_idle=sprMutant10DIdle;
    spr_walk=sprMutant10DWalk;
    spr_hurt=sprMutant10DHurt;
    spr_dead=sprMutant10DDead;
    }
    else if bskin=1
    {
    spr_idle=sprMutant10BIdle;
    spr_walk=sprMutant10BWalk;
    spr_hurt=sprMutant10BHurt;
    spr_dead=sprMutant10BDead;
    }
}
if race=22//ROGUE
RogueHeat=true;


friction = 0.45//reset friction