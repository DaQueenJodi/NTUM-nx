if instance_exists(Player)
{
if random(4) < Player.nochest
{
curse = 0
instance_change(BigWeaponChest,true)
}
else if random(16)<1&&Player.hard>2{//8
curse = 0
instance_change(EliteWeaponChest,true);
}
else if ( instance_exists(Crown)||Player.wepmod1!=0||Player.bwepmod1!=0 ) and random(7) < 1
curse = 1
else if Player.crown=14 && random(7)<5//Or you have a weapon mod
curse = 1
else
curse=0;

}
else if instance_exists(Crown) and random(7) < 1//Or you have a weapon mod
curse = 1
else
curse = 0

event_inherited()

if curse = 1
sprite_index = sprCursedChest

mediumchest=0;

if instance_exists(Player)
{
if (Player.ultra_got[25]==1)
    {
    mediumchest=1;
    }
}

scrWeapons()
wep=scrDecideWep(1+other.curse)


    if (mediumchest==1)
    {
    //medium sprite
    if curse==1
    sprite_index=sprMediumCursedWeaponChest;
    else
    sprite_index=sprMediumWeaponChest;
    }

