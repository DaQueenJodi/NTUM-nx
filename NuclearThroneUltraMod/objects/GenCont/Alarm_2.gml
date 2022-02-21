/// @description BOSSES mods secret areas
if Player.area = 3 and Player.subarea = 3
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,BecomeScrapBoss)

if Player.area = 106 and Player.subarea = 3
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,BecomeInvertedScrapBoss)

if ( Player.area=4 && Player.loops>0 )
{
repeat(Player.loops)
instance_create(instance_furthest(Player.x+random(128)-64,Player.y+random(128)-64,Floor).x+16, instance_furthest(Player.x+random(128)-64,Player.y+random(128)-64,Floor).y+16,BecomeScrapBoss)
}

if (Player.area = 5 and Player.subarea = 3) || ( Player.area=8 && Player.subarea=2 && Player.loops>0 )
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,LilHunter)

if (Player.area = 107 and Player.subarea = 3)//inverted frozen city
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,InvertedLilHunter)

if (Player.loops>1) && (Player.area = 5 and Player.subarea = 3)
{
repeat(Player.loops-1)
instance_create(instance_furthest(Player.x,Player.y,Floor).x+132, instance_furthest(Player.x,Player.y,Floor).y+32,LilHunter);
}

//Volcano Boss
//if Player.area = 7 and Player.subarea = 3
//instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,BecomeScrapBoss)
//instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,LilHunter)

if (Player.race=22 && Player.area!=100 && Player.area!=104 )
{

if instance_number(RogueAmmoChest)<1+Player.skill_got[23]+Player.skill_got[5]
with instance_furthest(Player.x+random(128)-64,Player.y+random(128)-64,Floor)
instance_create(x+16,y+16,RogueAmmoChest);

}

if UberCont.opt_gamemode == 25
{
	Player.x = SurvivalArenaStarter.x;
	Player.y = SurvivalArenaStarter.y;	
}
else if Player.area = 100
{
with instance_furthest(Player.x,Player.y,Floor)
{
	instance_create(x+16,y+16,CrownPickup)
    if Player.crownvisits>1{
    instance_create(x-32,y-64,WeaponMod)
    with instance_create(x+64,y-64,WeaponMod)
    image_xscale=-1;
    }
}
}
else if (Player.area > 2 or Player.loops > 0) and Player.subarea = 2 && Player.area != 9 && Player.area!=105 && Player.area!=101&&Player.area!=6&&Player.area!=8&&Player.area!=7&&Player.area!=108&&Player.area!=112&&Player.area!=103&&Player.area!=104&& Player.area!=113//not inverted desert ...and Player.loops >= Player.crownvisits 
{

with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(128)-64,Floor){
if Player.area=104{//YV Crib yo
instance_create(x+16,y+16,CarVenusFixed)
}else{
instance_create(x+16,y+16,ProtoStatue)} }
}

if Player.area=1 && Player.subarea<3
{
with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(128)-64,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(128)-64,Floor)
instance_create(x+16,y+16,BigFishSkull)
}



if ((Player.area = 105||Player.area = 106||Player.area = 107||Player.area = 108|| Player.area = 109 || Player.area = 110 || Player.area = 111 || (Player.area = 112 && Player.subarea<2) && !( Player.loops mod 2 == 0  && Player.loops>1/*even*/)) )// && random(4)<3)
{

with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
instance_create(x+16,y+16,WeaponMod)

}


//MUSHROOM WONDERLAND BANDITLAND
if Player.area = 8 && Player.subarea < 3 && Player.banditland=true
{
Player.banditland=false;
with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
instance_create(x+16,y+16,BigMushroom)

}
if Player.area == 102
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/5+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/5+random(128)-64+32,Floor)
		instance_create(x+16,y+16,GoldenPipe)	
}

//Gun Smiths weapon modder ultra
if Player.ultra_got[65] && Player.area !=100
{
instance_create(instance_nearest(Player.x,Player.y,Floor).x+16, instance_nearest(Player.x,Player.y,Floor).y+16,WeaponMod);
}

//safe corridors pls
if !(Player.area == 9 && Player.subarea == 3 || ((Player.area == 6 || Player.area == 112) && Player.subarea == 2))
{
	instance_create(Player.x,Player.y,WallBreak);
	instance_create(Player.x+16,Player.y+16,WallBreak);
	instance_create(Player.x+16,Player.y-16,WallBreak);
	instance_create(Player.x-16,Player.y+16,WallBreak);
	instance_create(Player.x-16,Player.y-16,WallBreak);
}
else
{
	Player.x += 16;
	Player.y -= 32;
}
