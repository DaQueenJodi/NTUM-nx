/// @description popo vans

alarm[2]=70+irandom(120);//minimum delay between vans

if (!instance_exists(GenCont) && !instance_exists(LevCont) && instance_exists(Floor))
{

//loop 1
if ( (instance_number(enemy)<enemiesInStartLevel*vanCome1&&instance_exists(Player) ) && canspawnvan1==true )
{

canspawnvan1=false;
var spawnfloor = instance_nearest(Player.x+choose(random(64)+132,random(-64)-132),Player.y+choose(random(48)+8,random(-48)-8),Floor);
if instance_exists(spawnfloor)
instance_create(spawnfloor.x+16,spawnfloor.y+16,VanSpawn);

exit;
}

//loop 2
if ( (instance_number(enemy)<enemiesInStartLevel*vanCome2&&instance_exists(Player) ) && canspawnvan2==true )
{

canspawnvan2=false;
var spawnfloor = instance_nearest(Player.x+choose(random(64)+132,random(-64)-132),Player.y+choose(random(48)+8,random(-48)-8),Floor);
if instance_exists(spawnfloor)
instance_create(spawnfloor.x+16,spawnfloor.y+16,VanSpawn);

exit;
}

//loop 3
if ( (instance_number(enemy)<enemiesInStartLevel*vanCome3&&instance_exists(Player) ) && canspawnvan3==true )
{

canspawnvan3=false;
var spawnfloor = instance_nearest(Player.x+choose(random(64)+132,random(-64)-132),Player.y+choose(random(48)+8,random(-48)-8),Floor);
if instance_exists(spawnfloor)
instance_create(spawnfloor.x+16,spawnfloor.y+16,VanSpawn);

exit;
}

///loop 4
if ( (instance_number(enemy)<enemiesInStartLevel*vanCome4&&instance_exists(Player) ) && canspawnvan4==true )
{

canspawnvan4=false;
var spawnfloor = instance_nearest(Player.x+choose(random(64)+132,random(-64)-132),Player.y+choose(random(48)+8,random(-48)-8),Floor);
if instance_exists(spawnfloor)
instance_create(spawnfloor.x+16,spawnfloor.y+16,VanSpawn);

}


///crown of popo
if ( (instance_number(enemy)<enemiesInStartLevel*vanCome5&&instance_exists(Player) ) && canspawnvan5==true )
{

canspawnvan5=false;
var spawnfloor = instance_nearest(Player.x+choose(random(64)+132,random(-64)-132),Player.y+choose(random(48)+8,random(-48)-8),Floor);
if instance_exists(spawnfloor)
instance_create(spawnfloor.x+16,spawnfloor.y+16,VanSpawn);

}



}

