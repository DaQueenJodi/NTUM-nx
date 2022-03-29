/// @description BOSSES mods secret areas
if Player.area = 3 and Player.subarea = 3
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,BecomeScrapBoss)

if Player.area = 106 and Player.subarea = 3
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,BecomeInvertedScrapBoss)


if (Player.area = 5 and Player.subarea = 3) || ( Player.area=8 && Player.subarea=1 && Player.loops>0 )
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,LilHunter)

if (Player.area = 107 and Player.subarea = 3)//inverted frozen city
instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,InvertedLilHunter)

if (Player.loops>1) && (Player.area = 5 and Player.subarea = 3)
{
repeat(Player.loops-1)
instance_create(instance_furthest(Player.x,Player.y,Floor).x+132, instance_furthest(Player.x,Player.y,Floor).y+32,LilHunter);
}

if (Player.loops > 0 && (Player.area == 2 || Player.area == 110) && Player.subarea == 1)
{
	scrSpawnBoss(BallMom);
}
if (Player.loops > 0 && Player.area == 4 && Player.subarea == 1)
{
	scrSpawnBoss(HyperCrystal);
}
if (Player.loops > 0 && (Player.area == 115 || Player.area == 110) && Player.subarea == 1)
{
	scrSpawnBoss(InvertedHyperCrystal);
}
if (Player.loops > 0 && Player.area == 115 && Player.subarea == 1)
{
	scrSpawnBoss(CursedHyperCrystal);
}
if (Player.loops > 0 && (Player.area == 6 || Player.area == 110) && Player.subarea == 1)
{
	scrSpawnTechnomancer(Technomancer);
}

//Volcano Boss
//if Player.area = 7 and Player.subarea = 3
//instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,BecomeScrapBoss)
//instance_create(instance_furthest(Player.x,Player.y,Floor).x+16, instance_furthest(Player.x,Player.y,Floor).y+16,LilHunter)

if (Player.race=22 && Player.area!=100 && Player.area!=104 && !(Player.area == 9 && Player.subarea == 3))
{

var ammoWant = 1+Player.skill_got[23]+Player.skill_got[5];
while (instance_number(RogueAmmoChest) < ammoWant)
{
	with instance_furthest(Player.x+random(128)-64,Player.y+random(128)-64,Floor)
	{
		if !collision_point(x,y,RogueAmmoChest,false,false)
			instance_create(x+16,y+16,RogueAmmoChest);
	}
}

}


if Player.area = 100
{
	with instance_furthest(Player.x,Player.y,Floor)
	{
		instance_create(x+16,y+16,CrownPickup)
	    if Player.crownvisits>1{
	    instance_create(x-32,y-64,WeaponMod)
	    with instance_create(x+64,y-64,WeaponMod)
	    image_xscale=-1;
	    }
		if Player.loops > 0
		{
			var xx = x;
			var yy = y;
			var msk = mask_index;
			mask_index = mskFloor;
			var xstep = 32;
			if Player.x > x
				xstep = -32;
			var ystep = 32;
			if Player.y > y
				ystep = -32;
			repeat(12)
			{
				if (!place_meeting(xx,yy,Floor))
				{
					with instance_create(xx,yy,Floor)
					{
						styleb = 1;
						sprite_index = sprFloor100C;
					}
				}
				xx += xstep;
			}
			instance_create(xx,yy,SurvivalWave);
			var oy = yy;
			for (var ix = 0; ix < 10; ix++) {
				yy = oy;
				for (var iy = 0; iy < 10; iy++) {
				    with instance_create(xx,yy,Floor)
					{
						styleb = 0;	
					}
					if iy == 5 && ix == 4 + max(0,sign(xstep))
					{
						instance_create(xx,yy,SurvivalArenaStarter);
					}
					yy += ystep;
				}
				xx += xstep;
			}
			mask_index = msk;
		}
	}
}
else if (Player.area > 2 or Player.loops > 0) and Player.subarea = 2 && Player.area != 9 && Player.area!=101&&Player.area!=6&&Player.area!=7&&Player.area!=108
&& Player.area!=102 && Player.area!=103 && Player.area!=104
&& Player.area!=112 && Player.area!=113 && Player.area!=114 && Player.area!=115&& Player.area!=116 && UberCont.opt_gamemode != 25
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
if Player.area == 5 && Player.subarea < 3 && Player.skill_got[18]
{
	with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/4+random(128)-64+32,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/4+random(128)-64+32,Floor)
		instance_create(x+16,y+16,JungleFrozenPlant)
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


if !(Player.area == 9 && Player.subarea == 3 || ((Player.area == 6 || Player.area == 112) && Player.subarea == 2) || UberCont.opt_gamemode == 25 || UberCont.opt_gamemode == 8
|| Player.area == 100)
{
	//safe corridors pls
	instance_create(Player.x,Player.y,WallBreak);
	instance_create(Player.x+16,Player.y+16,WallBreak);
	instance_create(Player.x+16,Player.y-16,WallBreak);
	instance_create(Player.x-16,Player.y+16,WallBreak);
	instance_create(Player.x-16,Player.y-16,WallBreak);
}
else if Player.area != 100
{
	Player.x += 16;
	Player.y -= 32;
}

