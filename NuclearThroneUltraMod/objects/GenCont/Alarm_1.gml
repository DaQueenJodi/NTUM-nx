instance_destroy()

if instance_exists(Player)
{
with Crown
{
if newThing = 1{
newThing = 0
repeat(2)
instance_create(x,y,IDPDSpawn)

}
}
if Player.area = 100{
snd_play(Player.snd_valt, 0, false, false)}
else if Player.subarea = 1{
snd_play(Player.snd_wrld, 0, false, false)}
if Player.race = 6
{

BackCont.shake += 5
snd_play(sndVenuz)
}

if Player.area = 103
{
    //Player.area = 3
    //Player.subarea = 2
    with WeaponChest
    {
    instance_create(x,y,GoldChest)
    instance_change(Wind,false)
    }
    with BigWeaponChest
    {
    instance_create(x,y,GoldChest)
    instance_change(Wind,false)
    }
    with EliteWeaponChest
    {
    instance_create(x,y,GoldChest)
    instance_change(Wind,false)
    }
}

if ( Player.area = 101 ) {
    with WeaponChest
    {
    instance_create(x,y,EliteWeaponChest)
    instance_change(Wind,false)
    }
    with BigWeaponChest
    {
    instance_create(x,y,EliteWeaponChest)
    instance_create(x+1,y+1,EliteWeaponChest)
    instance_change(Wind,false)
    }
}

Player.x = 10016
Player.y = 10016
if UberCont.opt_gamemode == 25
{
	Player.x = SurvivalArenaStarter.x;
	Player.y = SurvivalArenaStarter.y;	
}
else if Player.subarea==2 && (Player.area==6 || Player.area == 112)//Labs boss
{
Player.x = 10016+96;
Player.y = 10016+96;
}

Player.drawempty = 30
Player.drawlowhp = 30
}

snd_play(sndPortalOpen)

with CrownPickup
{

with Torch
{
if point_distance(x,y,other.x,other.y) < 240
instance_change(WepSwap,false)
}
}