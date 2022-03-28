/// @description EAT
with Player
{
	if bwep != 0
	{

	if string_copy(wep_name[wep],0,5) = "ULTRA"
	{
	repeat(12)//16 is one ultra lazerpistol ammo
	{
	with instance_create(x,y,Rad)
	{motion_add(random(360),random(2)+3)
	repeat(speed)
	speed *= 0.9}
	}

	scrUnlockCSkin(8,"FOR EATING AN ULTRA WEAPON",0);

	}
	else if string_copy(wep_name[wep],0,5) = "HYPER" || wep = 131//heavy hyper shit
	{

	scrUnlockBSkin(8,"FOR EATING A HYPER WEAPON",0);

	}

	if string_copy(wep_name[wep],0,4) = "GOLD"
	{
	if bskin=0//Robot secret golden skin
	{
	spr_idle=sprMutant8DIdle;
	spr_walk=sprMutant8DWalk;
	spr_hurt=sprMutant8DHurt;
	spr_dead=sprMutant8DDead;
	}
	repeat(4)
	{if random(maxhealth) > my_health and Player.crown != 2
	instance_create(x,y,HPPickup)
	else
	instance_create(x,y,AmmoPickup)}
	}

	if ultra_got[32]
	{

	with instance_create(x,y,RobotTurret)
	{
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
		motion_add(point_direction(x,y,mouse_x,mouse_y),11);
		wep = other.wep
		spr_idle=wep_sprt[wep];

		if wep_type[wep]=0
		{//melee
		wepammo=7+irandom(5)
		wepcost=1;
		}
		else
		{
		wepammo=round(typ_ammo[wep_type[wep]]*1.6);//if wepcost is more than 3x wepcost???
		wepcost=wep_cost[wep]
		if wepcost>wepammo//If its like a doubel spcs fire it once
			wepammo=wepcost;
		}

		reload=wep_load[wep];


		alarm[0]=reload
	}

	}

	with instance_create(x,y,RobotEat)
	image_xscale = Player.right

	if random(maxhealth) > my_health and Player.crown != 2
	instance_create(x,y,HPPickup)
	else
	instance_create(x,y,AmmoPickup)

	if curse = 1
	{
	curse = 0
	my_health -= 7
	repeat(10)
	instance_create(x+random(16)-8,y+random(16)-8,Curse)
	}


	if ultra_got[31]&&cwep!=0{//robot 3 weps A B C
	scrSwapWeps()// B C A
	cwep=0; // B C x
	}
	else{
	scrSwapWeps()
	bwep = 0}

	if skill_got[5] = 1
	{
	snd_play_2d(sndRobotEatUpg)
	instance_create(x,y,AmmoPickup)
	}
	else
	snd_play_2d(sndRobotEat)

	breload = 0
	instance_create(x,y,Smoke)

	//ROBOT Ultra B Regurgitate
	if ultra_got[30]==1
	{
	    if random(100)<55//original 43% chance
	    {
	    snd_play_2d(sndRegurgitate);
	        var dir;
	        dir=random(100);
	        {
	            if dir>77
	            {
	            instance_create(x,y,AmmoChest);
	            }
	            else if dir>52
	            {
	            instance_create(x,y,HealthChest);
	            }
	            else if dir>27
	            {
	            instance_create(x,y,RadChest);
	            }
	            else if dir<=27//slightly higher chance for weapon chest cus robot luv weps
	            {
	            instance_create(x,y,WeaponChest);
	            }
	        }
	    }
	}

	/*if ultra_got[32] // Robot lightning ULTRA D
	{

	snd_play_2d(choose(sndSpark1,sndSpark2));
	repeat(40)//16 is one ultra lazerpistol ammo
	{
	with instance_create(x,y,Rad)
	{motion_add(random(360),random(2)+3)
	repeat(speed)
	speed *= 0.9}
	}
	    repeat(irandom_range(2,6))
	    {
	    with instance_create(x,y,Lightning)
	{image_angle = random(360);
	team = other.team
	ammo = irandom_range(8,20)
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	    }
	}*/
	}	
}
instance_destroy();
