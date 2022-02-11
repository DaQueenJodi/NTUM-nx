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

if Player.subarea==2 && Player.area==6//Labs boss
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
/*
with Wall
{
if place_free(x-16,y)
l = 0
else
l = 4

if place_free(x+16,y)
w = 24-l
else
w = 20-l






if place_free(x,y-16)
r = 0
else
r = 4

if place_free(x,y+16)
h = 24-r
else
h = 20-r
}

*/
/*
with Wall
{
if place_free(x-16,y)
l = 0
else
l = 4


if place_free(x+16,y){
    if BackCont.area = 1 or BackCont.area = 100 or BackCont.area = 4  or BackCont.area = 8 or BackCont.area = 7 or BackCont.area = 105 or BackCont.area = 109 or BackCont.area = 108 or BackCont.area = 111{
       w = 22-l
    } else if (BackCont.area = 2 ||BackCont.area=110) && (outindex >= 0 && outindex <= 3){
       w = 20-l
    } else {
       w = 24-l
    }
} else {
  w = 20-l
}

if place_free(x,y-16)
r = 0
else
r = 4

if place_free(x,y+16){
    if BackCont.area = 7{
        h = 22-r
    } else {
        h = 24-r
    }
}
else{
    h = 20-r
}
}
*/

//with WeaponChest
//instance_create(x,y,DramaCamera)

/* */
/*  */
