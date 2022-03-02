room_speed=30;
if UberCont.opt_gamemode == 8
{
	with Floor
	{
		instance_destroy(id,false);	
	}
	with Wall
	{
		instance_destroy(id,false);	
	}
	with Top
	{
		instance_destroy(id,false);	
	}
	with TopSmall
	{
		instance_destroy(id,false);	
	}
	instance_create(x,y,VanFan);
}
if instance_exists(Player)
{
if Player.crown=18//DISCOOOO CROWN
room_speed=35;
    with Player{
    
    if ultra_got[87]//Rogue new captain ultra summon rogue idpd
    {
    with BackCont
    alarm[5]=10+random(120);
    
    }
    
    if ultra_got[58]
		alarm[9]=60;
    
    if ultra_got[79]==1&&race=21//Horror Ultra E
    {
    ultra_got[79]=0;
    skillsChosen=10;
    }
    
    if ultra_got[69]//Angel protector
    instance_create(x,y,AngelDeflect);
    
    if area=1&&subarea<3
    {oasisskip=instance_number(chestprop);
    if instance_exists(RadChest)
    oasisskip+=1;}
    else oasisskip=-1;
    
	if (random(100)<invertedchance || wep == 375 || bwep == 375 || cwep == 375)//Inversion magnet
	{
	    if ( (area=1&&subarea<3)  )//7.5% chance for inverted desert atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=105
	    }
	    else if ( area=2  )//7.5% chance for inverted sewers atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=105
	    }
	    else if ( (area=3&&subarea<3)  )//7.5% chance for inverted scrapyard atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=106
	    }
	    else if ( area=4  )//7.5% chance for inverted crystal caves atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=106
	    }
	    else if ( (area=5&&subarea<3)  )//7.5% chance for inverted frozen city atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	    else if ( area=6&&subarea<2  )//7.5% chance for inverted labs atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	    else if ( (area=7&&subarea<2)  )//7.5% chance for inverted vulcano atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	    else if ( (area=8&&subarea<3)  )//7.5% chance for inverted wonderland atom gets 12 procent
	    {
	    invertedportalcounter=1;
	    invertedportaldelay=45+random(100);
	    //area=107
	    }
	}

    
    
    
    if skill_got[28]//RAGE
    {
    instance_create(x,y,Rage);
    //hammerheadtimer=0 no real need for this it wont occur that you touch the wall 10 steps before leaving level    
    }    
    if skill_got[26]//HAMMER HEAD
    {
		hammerheadcounter = 30;
		if race=25
		{
			hammerheadcounter += 5;
		}
	
    }
    if ultra_got[3]//FISH's BROTHER
    {
    instance_create(x,y,Partner);
    }

    if ultra_got[48]//Yung Cuz Ultra D
    {
    lag=3;
    }
    
    if ultra_got[2]=1//fish ultra B gun warrant
    {
    instance_create(x,y,GunWarrant);
    alarm[2]=300;
    }
    
    if skill_got[25]//strong spirit
    {
    strongspiritused=false;
    }
    isAlkaline = true;
    if ultra_got[37]==1//Personal Guard REBEL ULTRA A
    {
    repeat(2)
    instance_create(x,y,Ally);
    }
    if race=13
    {justAsheep=true;}
    BackCont.enemiesInStartLevel=instance_number(enemy);
    
    
    if skill_got[29]//insomnia
    {
    if race = 25
    {
    with enemy
    {
	    if alarm[1]>0
		{
			alarm[1]+=290;
	
			with instance_create(x,y,Snooze)
			{
				owner = other.id;
				yoffset = other.sprite_height*0.5 - 4;
				depth = other.depth - 1;
			}
		}
    }
    }
    else
    {
    with enemy
    {
	    if alarm[1]>0
		{
	    alarm[1]+=265;
			with instance_create(x,y,Snooze)
			{
				owner = other.id;
				yoffset = other.sprite_height*0.5 - 4;
			}
		}
    }
    }
    
    }
    else
    {
    //making it easier
    with enemy
    {
    if alarm[1]>0
    alarm[1]+=45;
    }
    
    }
    }
    
    
    with WepPickup
    {
    if persistent = true
    {
    persistent = false
    
    x = Player.x
    y = Player.y
    motion_add(random(360),1.5+random(1))
    }
    }
    
    
    if UberCont.opt_gamemode=19&&instance_exists(Floor)//DISCS!
    {
    repeat(UberCont.opt_discs)
    {
    
    with instance_nearest((instance_furthest(Player.x,Player.y,Floor).x*2+Player.x)/3+random(300)-150,(instance_furthest(Player.x,Player.y,Floor).y*2+Player.y)/3+random(300)-150,Floor)
    {
    
    with instance_create(x+16,y+16,PermanentDisc)
    motion_add(random(360),2+random(5) )
    
    }
    
    
    }
    
    
    }
    
    if (Player.area == 1 && Player.subarea == 1)
	{
		var tar = Player;
		if instance_exists(WeaponChest)
		{
			tar = WeaponChest;
		}
		var furthest = instance_furthest(tar.x,tar,Floor);
		var dir = point_direction(x,y,furthest.x,furthest.y)+random_range(120,-120);
		var len = 128+random(256);
		var nearestFloor = instance_nearest(tar.x+lengthdir_x(len,dir),tar.y+lengthdir_y(len,dir),Floor)
		with nearestFloor
		{
			instance_create(x+16,y+8,BigVultureSkull)
		}
	}
}



with PlayerAlarms//Recheck alarms for certain skills
	event_user(0);

with UberCont
	wallsBroken = 0;
	