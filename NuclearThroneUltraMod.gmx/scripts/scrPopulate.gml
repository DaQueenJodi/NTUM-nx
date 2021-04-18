//setting area and spawning some enemies

with Floor
{
subarea=Player.subarea;
if Player.loops = 0 or Player.area = 100
{spawnarea = 0
if Player.area = 1 spawnarea = 1
if Player.area = 2 spawnarea = 2
if Player.area = 3 spawnarea = 3
if Player.area = 4 spawnarea = 4
if Player.area = 5 spawnarea = 5
if Player.area = 6 spawnarea = 6
if Player.area = 7 spawnarea = 7
if Player.area = 8 spawnarea = 8
if Player.area = 100 spawnarea = 100
if Player.area = 102 spawnarea = 102
if Player.area = 103 spawnarea = 103
if Player.area = 104 spawnarea = 104//crib
if Player.area = 105 spawnarea = 105
if Player.area = 106 spawnarea = 106//inverted scrapyard
if Player.area = 107 spawnarea = 107
if Player.area = 101 spawnarea = 101//oasis
if Player.area = 108 spawnarea = 108//inverted vulcano
if Player.area = 109 spawnarea = 109//inverted wonderland
if Player.area = 110 spawnarea = 110//inverted sewers
if Player.area = 111 spawnarea = 111//inverted caves
if Player.area = 112 spawnarea = 112//inverted labs
}
else{ //spawnarea = choose(1,2,3,4,5,6,7,8,105,102,103)

if random(2)<1.65
spawnarea=Player.area;
else
spawnarea = choose(1,2,3,4,5,6,7,8,choose(105,102,103,106,107,101,112,111,108,109),choose(105,102,103,106,107,101,112,111,108,109),choose(105,102,103,106,107,101,112,111,108,109));

}

instance_exists(Player){
if Player.area = 104||(Player.area==6&&Player.subarea==2&&Player.loops>0){
exit;}}

if random(10+Player.hard) < Player.hard and point_distance(x,y,Player.x,Player.y) > 160/*110*/ and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and ((x+16 != Player.x and y+16 != Player.y) or point_distance(x,y,Player.x,Player.y) > 300)//240
    {
    if ((spawnarea=3 || spawnarea=106) && Player.subarea=3)||( (spawnarea=5 || spawnarea=112) && Player.subarea=3)
    {
        if random(3)<1
        {
            if UberCont.opt_gamemode = 9//easy mode
            {
            if random(4)<1
            scrPopEnemies()
            }
        else
        scrPopEnemies()
        }
        
        //spawn some more enemies on loop 2 cause you need to die man.
        if Player.loops>2
        scrPopEnemies();
        
    }
    else
    {
    if UberCont.opt_gamemode = 9//easy mode
            {
            if random(4)<1
            scrPopEnemies()
            }
        else
        {//normal procedure
        scrPopEnemies()
        
        
        //spawn some more enemies on loop 2 cause you need to die man.
        if Player.loops>2&&random(2)<1
        scrPopEnemies();
        
        if Player.loops>4
        scrPopEnemies();
        
        if (Player.loops mod 2 == 0  && Player.loops>1)
        {
        //even thus inverted
        }
        else if(random(3)<1)
        scrPopEnemies();
        
        }
    }
    
    }
}

//COOL BONES

with Floor
{
if spawnarea = 1 || spawnarea = 105
{
if !place_free(x-32,y) and !place_free(x+32,y) and place_free(x,y)
{
instance_create(x,y,Bones)
instance_create(x,y+16,Bones)
with instance_create(x+32,y,Bones)
image_xscale = -1
with instance_create(x+32,y+16,Bones)
image_xscale = -1
}


if instance_exists(GenCont){
if !place_free(x-32,y) and !place_free(x-64,y) and place_free(x,y) and random(5) < 1
{
instance_create(x-64+16,y+16,TopDecal)
}

if !place_free(x+32,y) and !place_free(x+64,y) and place_free(x,y) and random(5) < 1
{
instance_create(x+64+16,y+16,TopDecal)
}

if !place_free(x,y+32) and !place_free(x,y+64) and place_free(x,y) and random(5) < 1
{
instance_create(x+16,y+64+16,TopDecal)
}

if !place_free(x,y-32) and !place_free(x,y-64) and place_free(x,y) and random(5) < 1
{
instance_create(x+16,y-64+16,TopDecal)
}

}


if spawnarea = 105
{
with Bones
sprite_index = sprBonesInverted;

with TopDecal
sprite_index=sprInvertedDesertTopDecal;
}



//with Bones
//sprite_index = sprSewerDecal

}
if spawnarea = 3 || spawnarea = 106
{
if !place_free(x-32,y) and !place_free(x+32,y) and place_free(x,y)
{
if random(7) < 1
instance_create(x,y,Bones)
if random(7) < 1
instance_create(x,y+16,Bones)
if random(7) < 1
{
with instance_create(x+32,y,Bones)
image_xscale = -1}
if random(7) < 1{
with instance_create(x+32,y+16,Bones)
image_xscale = -1}
}
with Bones
sprite_index = sprScrapDecal
}
if spawnarea = 5
{
if !place_free(x-32,y) and !place_free(x+32,y) and place_free(x,y)
{
if random(7) < 1
instance_create(x,y,Bones)
if random(7) < 1
instance_create(x,y+16,Bones)
if random(7) < 1
{
with instance_create(x+32,y,Bones)
image_xscale = -1}
if random(7) < 1{
with instance_create(x+32,y+16,Bones)
image_xscale = -1}
}
with Bones
sprite_index = sprIceDecal
}
if spawnarea = 4 || spawnarea = 111
{
if !place_free(x-32,y) and !place_free(x+32,y) and place_free(x,y)
{
if random(9) < 1
instance_create(x,y,Bones)
if random(9) < 1
instance_create(x,y+16,Bones)
if random(9) < 1
{
with instance_create(x+32,y,Bones)
image_xscale = -1}
if random(9) < 1{
with instance_create(x+32,y+16,Bones)
image_xscale = -1}
}
with Bones
sprite_index = sprCaveDecal
}
if spawnarea = 2
{
if !place_free(x-32,y) and !place_free(x+32,y) and place_free(x,y) and random(10) < 1
{
instance_create(x,y+16,Bones)
with instance_create(x+32,y+16,Bones)
image_xscale = -1
}
with Bones
sprite_index = sprSewerDecal
}
if spawnarea = 7|| spawnarea=108//CUSTOM
{
if !place_free(x-32,y) and !place_free(x+32,y) and place_free(x,y)
{
instance_create(x,y,Bones)
instance_create(x,y+16,Bones)
with instance_create(x+32,y,Bones)
image_xscale = -1
with instance_create(x+32,y+16,Bones)
image_xscale = -1
}
}
}


//making sure there are enough enemies and spawning props/lil walls

with Floor
{
if instance_exists(Player){
if (spawnarea=3 && Player.subarea=3)||(spawnarea=7 && Player.subarea=3)//exceptions pls for bosses
{
if instance_number(enemy) < (3+Player.hard/1.5) and point_distance(x,y,Player.x,Player.y) >80 and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and ((x+16 != Player.x and y+16 != Player.y) or point_distance(x,y,Player.x,Player.y) > 280)
{
if random(5)<1
scrPopEnemies()
}
}
else
{
if instance_number(enemy) < (3+Player.hard/1.5) and point_distance(x,y,Player.x,Player.y) >210 and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and ((x+16 != Player.x and y+16 != Player.y) or point_distance(x,y,Player.x,Player.y) > 280)
scrPopEnemies()
}
}//ded player normal populating senpai
else if instance_number(enemy) < (3+Player.hard/1.5) and point_distance(x,y,Player.x,Player.y) >210 and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and ((x+16 != Player.x and y+16 != Player.y) or point_distance(x,y,Player.x,Player.y) > 280)
scrPopEnemies()

//CROWN OF BLOOD
if instance_exists(Player){
if (Player.crown = 7 and random(8+Player.hard) < Player.hard and point_distance(x,y,Player.x,Player.y) > 210 and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and ((x+16 != Player.x and y+16 != Player.y) or point_distance(x,y,Player.x,Player.y) > 280))
scrPopEnemies()}

//CROWN OF MASACRE
if instance_exists(Player){
if (Player.crown = 15 and random(8+Player.hard) < Player.hard and point_distance(x,y,Player.x,Player.y) > 210 and !place_meeting(x,y,RadChest) and !place_meeting(x,y,AmmoChest) and !place_meeting(x,y,WeaponChest) and ((x+16 != Player.x and y+16 != Player.y) or point_distance(x,y,Player.x,Player.y) > 280))

repeat(2)
scrPopEnemies()

}



scrPopProps()


}

with NOWALLSHEREPLEASE
instance_destroy()

//spawning chests
scrPopChests()

//spawn desert boss
if Player.area = 1 and Player.subarea = 3
{
repeat(Player.loops+1)
instance_create(x,y,WantBoss)
}

//spawn INVERTED desert boss
if Player.area = 105 and Player.subarea = 3
{
repeat(Player.loops+1)
instance_create(x,y,WantBoss)
}

//spawn OASIS boss
if Player.area = 101 and Player.subarea = 2
{
repeat(Player.loops+1)
instance_create(x,y,WantBoss)
}

if (Player.area=2 && Player.loops>0)
{
repeat(Player.loops+1)
instance_create(x,y,WantBoss);
}
//venuz car
if Player.area = 3 and Player.subarea = 1
{
with instance_furthest(10016,10016,Car){
instance_create(x,y,CarVenus)
instance_change(Wind,false)
}
}
/*
//venuz car crib
if Player.area = 104 and Player.subarea = 1
{
with instance_furthest(10016,10016,Car){
instance_create(x,y,CarVenus)
instance_change(Wind,false)
}
}*/

if Player.area < 5 or Player.area >= 100
{
with WeaponChest
instance_create(x,y,Bandit)
with RadChest
instance_create(x,y,Bandit)
with AmmoChest
instance_create(x,y,Bandit)
}
else
{
with WeaponChest
instance_create(x,y,Grunt)
with RadChest
instance_create(x,y,Grunt)
with AmmoChest
instance_create(x,y,Grunt)
}

//populate pizza sewers
if Player.area = 102
{

with enemy
instance_destroy()

with instance_furthest(10016,10016,Corpse)
{
repeat(4)
instance_create(x+random(4)-2,y+random(4)-2,Turtle)
instance_create(x,y,Rat)
}
with Rad
instance_destroy()
with AmmoPickup
instance_destroy()
with HPPickup
instance_destroy()
with Corpse
instance_destroy()
}

//PIZZA SEWER ENTRANCE
{
if Player.area = 2
{
with Floor
{
if sprite_index = sprFloor2 and image_index = 1 or image_index = 5
instance_create(x,y,PizzaEntrance)
}
do {with instance_nearest(10016+random(240)-120,10016+random(240)-120,PizzaEntrance) instance_destroy()}
until instance_number(PizzaEntrance) <= 1
}}
