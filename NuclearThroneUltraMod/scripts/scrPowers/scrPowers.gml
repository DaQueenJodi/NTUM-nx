/// @description
function scrPowers() {
	/////SHIT PRESSED////////
	if KeyCont.key_spec[p] = 1
	{
	if race = 26//Good O'l Humphry
	{
		var t1 = wep_type[wep];
		var t2 = wep_type[bwep];
		var al = 5;//weapon types total
		var takePercentage = 0.0075;//0.75%
		var insufficientFunds = true;
		for (var i = 0; i < al; i++) {
			if (i != t1 && i != t2)
			{
				if (ammo[i] > 1 && ammo[i] - typ_amax[i]*takePercentage > 0)
				{
					ammo[i] = round(max(1,ammo[i] - typ_amax[i]*takePercentage));
					insufficientFunds = false;
				}
					
			}
		}
		if (insufficientFunds)
		{
			snd_play(snd_lowa);
		}
		else
		{
			var effective = false;
			with projectile
			{
				if (team!= other.team)
				{
					if (image_xscale > 0.2 + (other.ultra_got[104]*0.6) && image_yscale > 0.2 && speed > 1)
					{
						image_xscale *= 0.75;
						image_yscale *= 0.75;
						effective = true;
						speed *= 0.4;
					} else if (other.ultra_got[104])
					{
						effective = true;
						with instance_create(x,y,Notice)
						{
							sprite_index = sprHumphryDestroyProjectile;	
						}
						instance_destroy();	
					}
				}
			}
			if (effective)
			{
				Sleep(40);
				snd_play(sndChickenStart);
				instance_create(x,y,HumphryDiscipline);
			}
		}
	}

	if race = 23 //Frog
	{
	if skill_got[5]=1
	{
	snd_play(sndFrogStartButt);
	snd_loop(sndFrogLoopButt);
	}
	else
	{
	snd_play(sndFrogStart);
	snd_loop(sndFrogLoop);
	}
	}

	if race = 25//Mutation doctor
	{

	if ultra_got[99]
	{//necro doctor
    
	if instance_exists(Corpse)
	{
	//snd_play(sndNecromancerRevive)
	        //audio_stop_sound(sndBouncerHitWall)
        
	    with Corpse
	    {
	    if image_speed = 0 and (instance_number(enemy) > 0 or instance_exists(Portal)) and x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	        {
        
	        if !audio_is_playing(sndNecromancerRevive)
	        {
	        audio_sound_pitch(sndNecromancerRevive,random_range(1.1,1.5))
	        audio_play_sound(sndNecromancerRevive,90,0)
	        }
        
        
        
	        instance_destroy()
	        with instance_create(x,y,BloodStreak)
	        {
	        motion_add(point_direction(Player.x,Player.y,x,y),8)
	        image_angle = direction
	        }
        
	        instance_create(x,y,Scorchmark)
	        instance_create(x,y,AllyFreak);
	        //instance_create(x,y,AllyFreak);
	        }
	    }
	}

	}
	else if ultra_got[98]
	{

	if rad>21
	{
	audio_stop_sound(sndMutant0Slct)
	audio_sound_pitch(sndMutant0Slct,random_range(0.6,0.9))
	audio_play_sound(sndMutant0Slct,90,0)
	instance_create(mouse_x,mouse_y,Infect);
	rad-=21;
	}
	else
	scrEmptyRad();

	}
	else if alarm[3]<1 
	{
	//Regular active   
    
	    my_health--;
	    exception=true;
    
	    if my_health<=0 //KILL YOSELF USING ACTIVE
	    {
    
	    if skill_got[25]//strong spirit
	    {
	    if strongspirit==true&&strongspiritused==false
	    {
	    snd_play(sndStrongSpiritLost);
	    my_health=1;
	    alarm[1]=20;//invincibility 
	    strongspiritused=true;
	    strongspirit=false;
	    }
	    else
	    scrUnlockCSkin(25,"HAHAHAHAHA!",0);
	    }
	    else
	    scrUnlockCSkin(25,"HAHAHAHAHA!",0);
    
	    }
    
	    //if my_health<1&&strongspirit
	    image_index=0;
	    sprite_index=spr_hurt;
	    snd_play(snd_hurt, hurt_pitch_variation);

	    var raddrop=16;//13 An ally drops 5 rads
	    if skill_got[5]
	    raddrop=26;//19
    
	    repeat(raddrop)
	    {
	    with instance_create(x,y,Rad)
	    {motion_add(other.direction,other.speed)
	    motion_add(random(360),random(10*0.5)+3)
	    repeat(speed)
	    speed *= 0.9}
	    }
	}
    
    
	}

	if race = 16 && armour>0 ||(ultra_got[63]&&my_health>2&& alarm[3]<1)//Viking
	{
	    //63
	    if armour>0
	        armour--;
	    else if ultra_got[63]=1
	    {
	        my_health-=2;
	        exception=true
	    }
	    snd_play(sndExplosion);
    
	    scrBlankArmour();
    
	    with instance_create(x,y,ArmourStrike)
	    {image_angle = point_direction(x,y,mouse_x,mouse_y)
	    Originalangle=image_angle;
	    team = other.team
	    ammo = 100;
	    event_perform(ev_alarm,0)
	    visible = 0
	    with instance_create(x,y,ArmourStrikeStart)
	    {
	    image_angle = other.image_angle
	    image_yscale=3;
	    }}
    
	    if ultra_got[61]//MEGA ARMOUR STRIKE
	    {
    
	    with instance_create(x,y,ArmourStrike)
	    {image_angle = point_direction(x,y,mouse_x,mouse_y)-20
	    Originalangle=image_angle;
	    team = other.team
	    ammo = 100;
	    event_perform(ev_alarm,0)
	    visible = 0
	    with instance_create(x,y,ArmourStrikeStart)
	    {
	    image_angle = other.image_angle
	    image_yscale=3;
	    }}
    
	    with instance_create(x,y,ArmourStrike)
	    {image_angle = point_direction(x,y,mouse_x,mouse_y)+20
	    Originalangle=image_angle;
	    team = other.team
	    ammo = 100;
	    event_perform(ev_alarm,0)
	    visible = 0
	    with instance_create(x,y,ArmourStrikeStart)
	    {
	    image_angle = other.image_angle
	    image_yscale=3;
	    }}
    
    
	    BackCont.viewx2 += lengthdir_x(-8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(-8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.shake += 22
    
	    }
    
	    BackCont.viewx2 += lengthdir_x(-6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(-6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.shake += 25

	}


	if race = 22 //Rogue
	{
	if rogueammo>0
	{
	portalstrikesusedthislevel++;
	if portalstrikesusedthislevel>=8
	scrUnlockCSkin(22,"FOR USING EIGHT PORTAL STRIKES#IN ONE LEVEL",0);

	with instance_create(mouse_x,mouse_y,PortalStrike)
	{
	if other.bskin=2
	sprite_index=sprRogueCStrike
	if other.skill_got[5]
	{
	upgraded=true;
	if other.bskin=2
	sprite_index=sprRogueCStrikeTB;
	else
	sprite_index=sprRogueStrikeTB;
	}

	}

	snd_play(sndRogueAim);

	}
	else
	{

	snd_play(sndPortalStrikeEmpty);

	with instance_create(x,y,PopupText)
	{mytext = "NOT ENOUGH#PORTAL STRIKE AMMO"
	colour=c_red;
	other.wkick = -2}

	}


	}

	if race = 21//horror
	{

	if rad<=0
	{
	snd_play(sndHorrorEmpty);
	scrEmptyRad();
	}
	else
	{

	//First rad for game feel
	rad--;

	    with instance_create(x+lengthdir_x(random(horrorcharge*0.7),point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(random(horrorcharge*0.7),point_direction(x,y,mouse_x,mouse_y)),HorrorBeam)
	    {
	    bskin=other.bskin
    
	    if bskin = 1
	    sprite_index=sprHorrorBeamB;
	    else if bskin = 2
	    sprite_index=sprHorrorBeamC;
    
	    originnr=instance_number(HorrorBeam);
    
	    image_angle = point_direction(x,y,mouse_x,mouse_y)
	    team = other.team
	    motion_add(point_direction(x,y,mouse_x,mouse_y),6);
	    ammo=50
	    charge=other.horrorcharge;
	    event_perform(ev_alarm,0)
	    rad=1;
	        with instance_create(x,y,LightningSpawn)
	        {
	        if other.bskin=1
	        sprite_index=sprHorrorBeamSpawnB
	        else if other.bskin=2
	        sprite_index=sprHorrorBeamSpawnC
	        else
	        sprite_index=sprHorrorBeamSpawn
	        image_angle = other.image_angle
	        }
	    }

	}

	}


	if race = 20 //business hog
	{
	instance_create(x,y,ShopWheel);
	}

	if race = 19&&wep_type[wep]!=0&&can_shoot=1 //&& my_health > 1//SKELETON
	{

	snd_play(sndBloodGamble);

	scrFire();

	    //gamble some blood
	    if (wep_cost[wep]/typ_ammo[wep_type[wep]] >random(1)*(1-(skill_got[5]*0.3333333333333333) )  )//(skill_got[5]*0.3333333333333333)  )//cost of shot divided by ammo pickup for weptype
	    {//thronebutt adds 1/3 chance of not taking damage
	    markforhpreduction=true;
    
	    //if my_health<1&&strongspirit
	    image_index=0;
	    sprite_index=spr_hurt;
	    snd_play(snd_hurt, hurt_pitch_variation);
    
	repeat(3)
	{
	with instance_create(x,y,BloodStreak)
	{
	motion_add(random(360),8)
	image_angle = direction
	}
	}
	    }
    
	ammo[wep_type[wep]]+=wep_cost[wep]//return ammo
	rad+=wep_rad[wep]//return rad cost
	can_shoot=0;

	if Player.ultra_got[74]//Meltings Damnation Ultra B
	{
	reload*=0.2;//80 procent fire rate boost
	}



	}

	if race = 18//ANGEL
	{
	    if wep_type[wep] != 0
	    {
	    if ultra_got[70]//ULTRA B DECENT
	    {
	    if ( my_health-2>0 && ammo[wep_type[wep]] < typ_amax[wep_type[wep]]) && alarm[3]<1
	    {
	    var extra=0;
	    if Player.crown = 4
	    extra += 1
    
	    ammo[wep_type[wep]] += round((typ_ammo[wep_type[wep]]* (1.5+skill_got[5]) +extra))

	    if ammo[wep_type[wep]] > typ_amax[wep_type[wep]]
	    ammo[wep_type[wep]] = typ_amax[wep_type[wep]]
    
    
	    dir = instance_create(x,y,PopupText)
	    dir.mytext = "+"+string( round((typ_ammo[wep_type[wep]]* (1.5+skill_got[5]) +extra )) )+" "+string(typ_name[wep_type[wep]]) 
	    if ammo[wep_type[wep]] = typ_amax[wep_type[wep]]
	    dir.mytext = "MAX "+string(typ_name[wep_type[wep]])
    
    
	    my_health -= 2-skill_got[5];
    
	    //for rage and euphoria
	    exception=true;
	    if alarm[7]<1
	    alarm[7]=12;//reset the exception in 12 steps
    
	    snd_play(snd_hurt, hurt_pitch_variation)
	    Sleep(40)
	    }
	    }
	    else if ( ammo[wep_type[wep]]-round(typ_ammo[wep_type[wep]] * (2-skill_got[5]) )>=0 && my_health<maxhealth )
	    {
	    ammo[wep_type[wep]]-=round(typ_ammo[wep_type[wep]] * (2-skill_got[5]) );//2.5?
    
	    dir = instance_create(x,y,PopupText)
	    dir.mytext = "-"+string(round(other.typ_ammo[wep_type[other.wep]] * (2-skill_got[5]) ))+" "+string(other.typ_name[wep_type[other.wep]])
	    //if other.ammo[type] = other.typ_amax[type]
	    //dir.mytext = "MAX "+string(other.typ_name[type])
    
    
    
	        var num = 2
	        if Player.skill_got[9] = 1//secund tummy
	        num = 4
        
	        instance_create(x,y,HealFX)
        
	        //RUSH CROWN
	        if Player.crown = 4
	        num += 1
        
	        snd_play(sndHealthPickup)
	        my_health += num
	        if my_health > maxhealth
	        my_health = maxhealth
        
        
	        dir = instance_create(x,y,PopupText)
	        dir.mytext = "+"+string(num)+" HP"
	        if my_health = maxhealth
	        dir.mytext = "MAX HP";
	         //instance_create(x,y,HPPickup);
	         Sleep(40)
	    }
	    else if my_health<maxhealth
	    {
	    snd_play(sndEmpty);
	    dir = instance_create(x,y,PopupText);
	    dir.mytext = "NOT ENOUGH AMMO";
	    }
	}
	else
	{
	snd_play(sndEmpty);
	    dir = instance_create(x,y,PopupText);
	    dir.mytext = "THIS DOESN'T USE AMMO";
	}

	}

	if race==17//weaponsmith
	{
	    if bwep!=0
	    {
	    //var upgradechance = wep_area[wep]-wep_area[bwep];
	    if string_copy(wep_name[wep],0,4) = "GOLD" && string_copy(wep_name[bwep],0,4) = "GOLD"
	    scrUnlockBSkin(17,"FOR COMBINING TWO GOLDEN WEAPONS",0);
    
	    //handling golden weapons
	    if string_copy(wep_name[wep],0,4) = "GOLD"&&loops<1
	    wep=9//minigun tier 6
	    if string_copy(wep_name[bwep],0,4) = "GOLD"&&loops<1
	    bwep=9//minigun tier 6
    
	    //GO through array and check if there is a weapon of a higher  tier first
	    if random(2)<1
	    highesttier=wep_area[wep];
	    else
	    highesttier=wep_area[bwep];
    
	    if highesttier=-1||highesttier=99
	    highesttier=irandom(4);
	   // bwep=0;
	        //if random(5)<upgradechance
	        //{
	        var dir=0;
	        var newwep = wep;
	            do
	            {
	            newwep=round(random(maxwep-1)+1);
	            dir++
	            if dir>4999
	            newwep=wep;
	            }
	            until(  (wep_area[newwep]==(highesttier+2+skill_got[5]) )|| ( ( wep_area[newwep]==highesttier || ( wep_area[newwep] > highesttier && wep_area[newwep] < highesttier+2+skill_got[5] ) )&&dir>3000 ) || ( dir>5000 ) )//PREVENT INFINITE LOOP HERE IF YOU HAVE HIGHEST TIER WEAPON
            
	            //wep=0;
	            //scrSwapWeps()
	            if bcurse=1
	            curse=1;
	            bwep = 0
	            wep=newwep;
            
	            can_shoot = 1
	            reload = 0
	            scrWeaponHold();
	            instance_create(x,y,UpgradeFX);
            
	            //dont start empty handed
	        if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*3
	        {ammo[wep_type[wep]]+=typ_ammo[wep_type[wep]]*3;}
        
	        if ammo[wep_type[bwep]] < typ_ammo[wep_type[bwep]]*3
	        {ammo[wep_type[bwep]]+=typ_ammo[wep_type[bwep]]*3;}
        
	            //snd_play(sndHitMetal);
	        //}
	    if ultra_got[66]
	    armour+=2;
    
	    dir = instance_create(x,y,PopupText)
	    dir.mytext = string(wep_name[wep])+"!"
	    }

	}

	if race==15//Atom
	{
	if ultra_got[60] && point_distance(x,y,mouse_x,mouse_y)<300//Ultra D
	{
	var tel;
	tel=false;

	if instance_exists(enemy)
	{
	if (point_distance(mouse_x,mouse_y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)<300)
	{tel=true;}
	}
	if instance_exists(Corpse)
	{
	if (point_distance(mouse_x,mouse_y,instance_nearest(x,y,Corpse).x,instance_nearest(x,y,Corpse).y)<300)
	{tel=true};
	}


	if (tel==true)
	{
    
	    if place_meeting(mouse_x,mouse_y,Floor)
	    {
	    if alarm[3]<1
	    alarm[3]=4;//imunity
	    instance_create(x,y,Teleport);
	    snd_play(sndHyperLightning);
	    repeat(5){
	    with instance_create(x,y,Smoke)
	    motion_add(random(360),1+random(3))}
    
	    x=mouse_x;
	    y=mouse_y;
	    BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.shake += 2    
    
	    if skill_got[5]//thronebutt
	    {
	    instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
	    snd_play(sndLightning3);

	    with instance_create(x,y,Lightning)
	{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(360))*other.accuracy
	team = other.team
	ammo = 6
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}



	    }
    
    
	    repeat(5){
	    with instance_create(x,y,Smoke)
	    motion_add(random(360),1+random(3))}
	    }
	    else
	    {
	    if alarm[3]<1
	    alarm[3]=4;//imunity
	    instance_create(x,y,Teleport);
	    snd_play(sndHyperLightning);
	    repeat(5){
	    with instance_create(x,y,Smoke)
	    motion_add(random(360),1+random(3))}
    
	    var xx;
	    var yy;
    
	    xx=32*(mouse_x div 32);
	    yy=32*(mouse_y div 32);
    
    
	    instance_create(xx,yy,FloorExplo);
    
    
	    instance_create(xx,yy,WallBreak);
    
    
	    mask_index=mskPickupThroughWall;
    
	    alarm[8]=2;
    
	    x=xx;;
	    y=yy;;
	    BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.shake += 2    
    
	    if skill_got[5]//thronebutt
	    {
	    snd_play(sndLightning3);
	    instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
    

	    with instance_create(x,y,Lightning)
	{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(360))*other.accuracy
	team = other.team
	ammo = 6
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}


	    }
    
    
	    repeat(5){
	    with instance_create(x,y,Smoke)
	    motion_add(random(360),1+random(3))}
	    }

    
    
	}
	}
	else if place_meeting(mouse_x,mouse_y,Floor) and !place_meeting(mouse_x,mouse_y,Wall)//REGULAR
	{
	if alarm[3]<1
	alarm[3]=4;//imunity
	instance_create(x,y,Teleport);
	snd_play(sndHyperLightning);
	repeat(5){
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(3))}
	x = mouse_x
	y = mouse_y
	BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	BackCont.shake += 2  
  
	    if skill_got[5]//thronebutt
	    {
	    snd_play(sndLightning3);
	    instance_create(x+random(24)-12,y+random(24)-12,PlasmaImpact);
    
	    if ultra_got[59]=1
	{

	    with instance_create(x,y,Lightning)
	{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(360))*other.accuracy
	team = other.team
	ammo = 9
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	}
	else{

	with instance_create(x,y,Lightning)
	{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(360))*other.accuracy
	team = other.team
	ammo = 6
	event_perform(ev_alarm,0)
	visible = 0
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}

	}
	    }
    

	repeat(5){
	with instance_create(x,y,Smoke)
	motion_add(random(360),1+random(3))}
	}

	}

	if race==14//PANDA
	{
	if curse=0&&wep!=0{

	snd_play(sndEnemySlash);
	    with instance_create(x,y,ThrowWep)
	    {
	    team=other.team;
	    motion_add(point_direction(x,y,mouse_x,mouse_y),16);
	    scrWeapons()
	    if other.ultra_got[54]=1
	{
	    //primary
	    var prevwep;
    
	    if wep_area[other.wep]=99//handling starting weapons
	    wep_area[other.wep]=1
    
	    prevwep=other.wep;
    
	    do {wep = round(random(maxwep-1)+1)}
	    until (wep_area[wep] = wep_area[prevwep])

	    curse = other.curse
	    wepmod1=other.wepmod1;
	    wepmod2=other.wepmod2;
	    wepmod3=other.wepmod3;
	    wepmod4=other.wepmod4;
    
	}
	else{
	    wep=other.wep;}
    
	    name = wep_name[wep]
	    //ammo = 50
	    type = wep_type[wep]
	    curse = other.curse
	    wepmod1=other.wepmod1;
	    wepmod2=other.wepmod2;
	    wepmod3=other.wepmod3;
	    wepmod4=other.wepmod4;
	    sprite_index = wep_sprt[wep]
    
	    }
	    BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	    BackCont.shake += 1
	    scrSwapWeps()
	    bwep = 0
	    }
	}

	if ultra_got[36]//CHICKEN VANISH
	{
	with instance_create(x,y,Decoy)
	alarm[0]=80;//decoy duration
	image_xscale=Player.right;
	}

	//YUNG CUZ
	if race==12 && maxhealth/2 >=1 || (ultra_got[47] && my_health-2>0){
	var xran;
	var yran;
	xran=random(22)-11;
	yran=random(22)-11;
	    if !place_meeting(x+xran,y+yran,Wall)
	    {//SPAWN BUDDY
	        if ultra_got[46]==1&&instance_number(YungCuzDupe)<3{
	        instance_create(x+xran,y+yran,YungCuzDupe);
	        snd_play(sndMutant12Wrld)
	        Sleep(40)
	        }
	        else if ultra_got[46]==0{
	        instance_create(x+xran,y+yran,YungCuzDupe);
    
	    //for rage and euphoria
	    exception=true;
	    if alarm[7]<1
	    alarm[7]=12;//reset the exception in two steps
    
	        if ultra_got[47]{
	        my_health-=2//1/8--->0.875
	        }
	        else{
	        maxhealth=floor(maxhealth*0.75);//0.5
	        }
	        if my_health>maxhealth
	        {my_health=maxhealth;}
        
	        sprite_index = spr_hurt
	        image_index = 0
	        snd_play(snd_hurt, hurt_pitch_variation)
	        Sleep(40)
	        }
	    }
	    else{//no place
	    //snd_play(sndMutant12Slct)
    
	    //SPAWN BUDDY
	        if ultra_got[46]==1&&instance_number(YungCuzDupe)<3{
			instance_create(x,y,YungCuzDupe)
	        snd_play(sndMutant12Wrld)
	        Sleep(40)
	        }
	        else if ultra_got[46]==0{
	        instance_create(x,y,YungCuzDupe);
    
	    //for rage and euphoria
	    exception=true;
	    if alarm[7]<1
	    alarm[7]=12;//reset the exception in two steps
    
	        if ultra_got[47]{
	        maxhealth=floor(maxhealth*0.875);//1/8
	        }
	        else{
	        maxhealth=floor(maxhealth*0.5);
	        }
	        if my_health>maxhealth
	        {my_health=maxhealth;}
        
	        sprite_index = spr_hurt
	        image_index = 0
	        snd_play(snd_hurt, hurt_pitch_variation)
	        Sleep(40)
	        }
    
	    }
	}

	// SHEEP
	if race==13
	{
	stormDirection=direction;
	with instance_create(x,y,SheepStorm)
	{
	team=other.team;
	}
	if hspeed>0
	sheepright=1;
	else
	sheepright=-1;

	if skill_got[2]==1//extra feet
	{
	maxspeed=7.5;
	}
	else
	{
	maxspeed=7;
	}
	}

	//ROBOT
	if race = 8
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
	snd_play(sndRobotEatUpg)
	instance_create(x,y,AmmoPickup)
	}
	else
	snd_play(sndRobotEat)

	breload = 0
	instance_create(x,y,Smoke)

	//ROBOT Ultra B Regurgitate
	if ultra_got[30]==1
	{
	    if random(100)<55//original 43% chance
	    {
	    snd_play(sndRegurgitate);
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

	snd_play(choose(sndSpark1,sndSpark2));
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

	//FISH
	if race = 1
	{if speed < 0.4
	direction = point_direction(x,y,mouse_x,mouse_y)
	speed = 4
	roll = 1
	snd_play(sndRoll)

	if skill_got[5] = 1
	snd_play(sndFishRollUpg)

	instance_create(x,y,Dust)
	}

	//REBEL
	if race = 10 and my_health > 2 || (race = 10 && !(instance_exists(Ally)) && my_health > 1) && alarm[3]<1
	{canrebel = 1

	if !(instance_exists(Ally))
	{my_health -=1;}
	else{my_health -= 2;
	}
	exception=true;
	if alarm[7]<1
	alarm[7]=12;//reset the exception in two steps


	if skill_got[5] = 1
	snd_play(sndSpawnSuperAlly)
	else
	snd_play(sndSpawnAlly)
	with Ally
	{
	instance_create(x,y,HealFX)
	alarm[2] = 120

	if instance_exists(Player)
	{
	if Player.ultra_got[37]==1//Rebel Ultra A Personal Guard
	maxhealth=30;
	else
	maxhealth = 12;
	}


	}
	if Player.ultra_got[38]==1//Rebel Ultra B Riot
	{
	instance_create(x,y,Ally);
	}
	instance_create(x,y,Ally)

	sprite_index = spr_hurt
	image_index = 0



	snd_play(snd_hurt, hurt_pitch_variation)
	Sleep(40)
	instance_create(x,y,Dust)


	}

	//CRYSTAL
	if race = 2 and !instance_exists(CrystalShield)//Change this ability to longer lasting shield.
	{
	instance_create(x,y,CrystalShield)
	}

	//MELTING
	if race = 4
	{
	if ultra_got[13]{
	with enemy{
	if maxhealth<=5 and x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{//melting ultra a brain capacity
	MorphMe=true;


	snd_play(sndExplosion)

	if Player.skill_got[5] = 1
	snd_play(sndCorpseExploUpg)
	else
	snd_play(sndCorpseExplo)

	instance_destroy()
	with instance_create(x,y,BloodStreak)
	{
	motion_add(point_direction(Player.x,Player.y,x,y),8)
	image_angle = direction
	}
	instance_create(x,y,MeltSplat)//Scorchmark
	if Player.skill_got[5] = 1
	{ang = random(360)
	instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
	instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
	instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)}
	instance_create(x,y,MeatExplosion)
	}
	} }
	with Corpse
	{if image_speed = 0 and (instance_number(enemy) > 0 or instance_exists(Portal)) and x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	snd_play(sndExplosion)

	if Player.skill_got[5] = 1
	snd_play(sndCorpseExploUpg)
	else
	snd_play(sndCorpseExplo)

	instance_destroy()
	with instance_create(x,y,BloodStreak)
	{
	motion_add(point_direction(Player.x,Player.y,x,y),8)
	image_angle = direction
	}
	instance_create(x,y,MeltSplat)
	if Player.skill_got[5] = 1 || size>1
	{ang = random(360)
	instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),MeatExplosion)
	instance_create(x+lengthdir_x(24,ang+120),y+lengthdir_y(24,ang+120),MeatExplosion)
	instance_create(x+lengthdir_x(24,ang+240),y+lengthdir_y(24,ang+240),MeatExplosion)}
	instance_create(x,y,MeatExplosion)}}


	}

	//PLANT
	if race = 5
	{
	    if ultra_got[20]{//STEREO SNARES
	    with Tangle
	    {if instance_number(Tangle)>1
	    instance_destroy();}
	    with TangleSeed
	    {if instance_number(Tangle)>1
	    instance_destroy();}
	    }
	else{
	with Tangle
	instance_destroy()
	with TangleSeed
	instance_destroy()
	}

	with instance_create(x,y,TangleSeed)
	{motion_add(point_direction(x,y,mouse_x,mouse_y),12)
	image_angle = direction
	team = other.team}
	}

	//YUNG VENUZ
	if race = 6 and can_shoot = 1
	{
	if wep_type[wep] != 0&&wep!=239//no melleee allowed sorry and no rocket puncher thing lol I have to update this soon
	{
	if ammo[wep_type[wep]] < wep_cost[wep]*(2+Player.skill_got[5]*2) and KeyCont.key_spec[p] = 1 and wep_type[wep] != 0
	scrEmpty()

	if rad-(wep_rad[wep]*(2+Player.skill_got[5]*2))<0
	{//not enough radiation
	scrEmptyRad();
	}

	if ammo[wep_type[wep]] >= wep_cost[wep]*(2+Player.skill_got[5]*2) and rad>=wep_rad[wep]*(2+Player.skill_got[5]*2)
	{
	    if (Player.level>9){
	    repeat(2+(Player.skill_got[5]+Player.ultra_got[22])*(1+Player.skill_got[5]))//ULTRA B
	    {
    
	    scrFire()
	    can_shoot = 1}
    
	    ammo[wep_type[wep]]+=((Player.ultra_got[22]*Player.skill_got[5])+Player.ultra_got[22])*wep_cost[wep]//Return ammo for ultra (2*ifThronebutt)
	    }
	    else{
	    repeat(2+Player.skill_got[5]*2)
	    {
	    scrFire()
	    can_shoot = 1}
	    }
	can_shoot = 0

	if Player.skill_got[5] = 1{
	snd_play(sndPopPopUpg);}
	else
	snd_play(sndPopPop)


	if Player.ultra_got[24]=1//YV ULTRA D
	{
	scrSwapWeps()
	//I should check if its a melee weapon again but I think its a really cool combo so nah leave the "bug" in
	if ammo[wep_type[wep]] >= wep_cost[wep]*(2+Player.skill_got[5]*2) and rad>=wep_rad[bwep]*(2+Player.skill_got[5]*2)// Check ammo of our secondary wep
	{

	    if (1.5>random(wep_cost[wep]) )//the random value less likely when the other weapons cost is a lot
	    {
	    repeat(2+Player.skill_got[5]*2)
	        {
	        scrFire()
	        can_shoot = 1}
	    can_shoot = 0
    
	    reload *= 1.9+Player.skill_got[5]*1.4//added reload time
	    }
	}
	scrSwapWeps()

	if Player.skill_got[5] = 1{
	snd_play(sndPopPopUpg);}
	else
	snd_play(sndPopPop)

	}
	reload *= 1.9+Player.skill_got[5]*1.4//added reload time
	motion_add(point_direction(x,y,mouse_x,mouse_y)+180,4)
	BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y))
	BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y))
	BackCont.shake += 1}


	}
	}

	//HUNTER
	if (race == 11)
	{

	if Player.ultra_got[44]=1{//Hunter Ultra D CRACKSHOT
	if(instance_exists(enemy)){
	if(point_distance(mouse_x,mouse_y,instance_nearest(mouse_x,mouse_y,enemy).x,instance_nearest(mouse_x,mouse_y,enemy).y)<48){
	    snd_play(sndSniperTarget);

	    with instance_create(mouse_x,mouse_y,Marker){
	    target=instance_nearest(x,y,enemy);
	    image_angle=30*(MarkerNr-1);
	        }
        
	        if instance_number(Marker)>3{//Override markers
	        with Marker{
	        if (MarkerNr==1){
	        instance_destroy();}
	        MarkerNr-=1;
	        image_angle=30*MarkerNr;}
	        }
	    }
	    else{with Marker//if you place a marker not near an enemy all markers dissapear?
	        instance_destroy();}
	    }
	}
	else
	{// marker ability
	if (instance_exists(Marker)){

	    with Marker
	    instance_destroy()
	}
	else if(instance_exists(enemy)){
	if(point_distance(mouse_x,mouse_y,instance_nearest(mouse_x,mouse_y,enemy).x,instance_nearest(mouse_x,mouse_y,enemy).y)<48){
	    snd_play(sndSniperTarget);
	    with instance_create(mouse_x,mouse_y,Marker){
	    target=instance_nearest(x,y,enemy);
	        }
	    }}
    
	}
	}

	}
	
	////////SHIT HELD////////
	if KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2
	{

/*
	if race = 26//Good O'l Humphry
	{
	if ultra_got[104]
	{
	with instance_create(x+lengthdir_x(random(4),random(360)),y+lengthdir_y(random(4),random(360)),Smoke)
	{motion_add(other.direction+180+random(40)-20,0.1+random(2))
	team = other.team}
	}
	else
	{
	with instance_create(x+lengthdir_x(random(4),random(360)),y+lengthdir_y(random(4),random(360)),Dust)
	{motion_add(other.direction+180+random(40)-20,0.1+random(2))
	team = other.team}
	}

	if skill_got[2]==1//extra feet
	{
	maxspeed=5.7;
	if ultra_got[104]
	maxspeed=7.7
	}
	else
	{
	maxspeed=5.2;
	if ultra_got[104]
	maxspeed=7.2
	}
	image_speed=0.25;
	}
*/
	if race = 23 //Frog
	{

	if ultra_got[92]=0
	speed=0;

	    if toxicamount<maxtoxicamount
	    {
    
	    if ultra_got[90]//intimacy ultra
	    toxicamount+=2;
	    else
	    toxicamount++;
    
	    if ultra_got[91]//FROG MOMMA ULTRA C
	    {
    
	    if toxicamount = floor(maxtoxicamount*0.1)
	    instance_create(x,y,FrogEgg);
    
	    }
    
    
	    }
	}


	//HORROR
	if race == 21 //&& random(2)<1// && !instance_exists(HorrorBeam)
	{



	if rad>0
	{

	if horrorcharge=origincharge
	snd_play(sndHorrorBeam);

	if horrorcharge<maxcharge
	horrorcharge+=0.18+(skill_got[5]*0.3);

	if skill_got[5]
	{
	horrorhealtime++;

	    if horrorhealtime>115
	    {
	    if my_health<maxhealth
	    {
	        my_health++;
        
        
	        with instance_create(x,y,HealFX)
	        sprite_index=sprHorrorTB;
        
	        if my_health>=maxhealth
	        {
	        with instance_create(x,y,PopupText)
	        mytext = "MAX HP"
	        }
	        else
	        {
	            with instance_create(x,y,PopupText)
	            mytext = "+1"+" HP"
            
	        }    
	    }
        
	    horrorhealtime=0;
	    }

	if !(audio_is_playing(sndHorrorLoopTB))
	snd_loop(sndHorrorLoopTB);

    
	}
	else if !(audio_is_playing(sndHorrorLoop))
	snd_loop(sndHorrorLoop);

	if (horrorcharge>7||random(7)<horrorcharge||horrorcharge=origincharge)
	{

	// this makes the beam more efficient
	//if random(3)<2
	rad--;

	if horrorcharge>12&&random(2)<1
	{
	rad--;

	    with instance_create(x+lengthdir_x(random(horrorcharge*0.7),point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(random(horrorcharge*0.7),point_direction(x,y,mouse_x,mouse_y)),HorrorBeam)
	    {
	    bskin=other.bskin
	    if bskin = 1
	    sprite_index=sprHorrorBeamB;
    
	    originnr=instance_number(HorrorBeam);
    
	    image_angle = point_direction(x,y,mouse_x,mouse_y)
	    team = other.team
	    motion_add(point_direction(x,y,mouse_x,mouse_y),6);
	    ammo=50
	    charge=other.horrorcharge;
	    event_perform(ev_alarm,0)
	    rad=1;
	        with instance_create(x,y,LightningSpawn)
	        {
	        if other.bskin=1
	        sprite_index=sprHorrorBeamSpawnB
	        else
	        sprite_index=sprHorrorBeamSpawn
	        image_angle = other.image_angle
	        }
	    }

	}

	with instance_create(x+lengthdir_x(random(horrorcharge*0.6),point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(random(horrorcharge*0.6),point_direction(x,y,mouse_x,mouse_y)),HorrorBeam)
	{
	bskin=other.bskin
	if bskin = 1
	sprite_index=sprHorrorBeamB;

	originnr=instance_number(HorrorBeam);

	image_angle = point_direction(x,y,mouse_x,mouse_y)
	team = other.team
	motion_add(point_direction(x,y,mouse_x,mouse_y),6);
	ammo=50
	charge=other.horrorcharge;
	event_perform(ev_alarm,0)
	rad=1;
	    with instance_create(x,y,LightningSpawn)
	    {
	    if other.bskin=1
	    sprite_index=sprHorrorBeamSpawnB
	    else
	    sprite_index=sprHorrorBeamSpawn
	    image_angle = other.image_angle
	    }
	}

	}

	if random(4)<1
	{
	    with instance_create(x+lengthdir_x(random(horrorcharge*0.6),point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(random(horrorcharge*0.6),point_direction(x,y,mouse_x,mouse_y)),HorrorBeam)
	    {
	    bskin=other.bskin
	    if bskin = 1
	    sprite_index=sprHorrorBeamB;
    
	    originnr=instance_number(HorrorBeam);
    
	    image_angle = point_direction(x,y,mouse_x,mouse_y)
	    team = other.team
	    motion_add(point_direction(x,y,mouse_x,mouse_y),6);
	    ammo=50
	    charge=other.horrorcharge;
	    event_perform(ev_alarm,0)
	    rad=1;
	        with instance_create(x,y,LightningSpawn)
	        {
	        if other.bskin=1
	        sprite_index=sprHorrorBeamSpawnB
	        else
	        sprite_index=sprHorrorBeamSpawn
	        image_angle = other.image_angle
	        }
	    }
	}


	if BackCont.viewx2 < 8
	BackCont.viewx2 = lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	if BackCont.viewy2 < 8
	BackCont.viewy2 = lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
	BackCont.shake += 0.9


	}
	else if audio_is_playing(sndHorrorLoop)||audio_is_playing(sndHorrorLoopTB)
	{
	audio_stop_sound(sndHorrorLoop);
	audio_stop_sound(sndHorrorLoopTB);
	snd_play(sndHorrorEmpty);
	}

	}


	if race==24//Elementor
	{
	mask_index=mskWall;
	var xx;
	var yy;
	xx=16*(mouse_x div 16);
	yy=16*(mouse_y div 16);
	if point_distance(x,y,mouse_x,mouse_y)>16{
	    if place_meeting(xx,yy,Floor)&&place_free(xx,yy)&&!place_meeting(xx,yy,projectile)&&!place_meeting(xx,yy,enemy)&&!place_meeting(xx,yy,prop)&&!place_meeting(xx,yy,Sheep)&&!place_meeting(xx,yy,ExplosiveSheep)
	    {

	    //if place_meeting(xx+16,yy,Wall)||place_meeting(xx-16,yy,Wall)||place_meeting(xx,yy-16,Wall)||place_meeting(xx,yy+16,Wall)
	    //{
	    //here check if we don't block a path
	    snd_play(sndStatueHurt);
    
	    with instance_create(xx,yy,VikingWall)
	    alarm[0]=15;
	    //}
	    }
    
	    //instance_create(xx,yy,Wall);
	    }
	mask_index=mskPlayer;
	}


	//CHICKEN
	if race = 9 && !(instance_exists(GenCont))
	{
	room_speed=20;//15

	if instance_exists(Decoy)//CHICKEN VANISH
	{
	instance_create(x+irandom(8)-4,y+irandom(8)-4,Smoke);
	}

	if skill_got[5]==1//THRONEBUTT
	{//Normal movement speed
	//spr_walk = sprMutant9Thronebutt;


	if my_health > 0
	{
	if bskin=1
	spr_walk = sprMutant9BThronebutt;
	else if bskin=2
	spr_walk = sprMutant9CThronebutt;
	else
	spr_walk=sprMutant9Thronebutt;
	}


	if skill_got[2]==1//extra feet
	{
	maxspeed=6.3;//6.5
	}
	else
	{
	maxspeed=5.8;//6
	}

	image_speed=0.7;
	friction = 0.90;

	if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
	hspeed -= 3
	if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
	hspeed += 3
	if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
	vspeed -= 3
	if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
	vspeed += 3
	}
	else
	{
	    if speed>maxspeed-0.5//make chicken a lill slower in slow mo when no thronebutt
	    {
	    speed-=0.5;
	    }
	}


	if !audio_is_playing(sndChickenLoop) {snd_play(sndChickenStart) snd_loop(sndChickenLoop)}
	/*
	if reload > 0 and skill_got[5] = 0
	reload += 0.5
	speed *= 0.3
	image_index -= image_speed*0.7

	with enemy
	{
	if point_distance(x,y,other.x,other.y) < 96
	{
	speed *= 0.5
	image_index -= image_speed*0.5
	}
	}
	with projectile
	{
	if point_distance(x,y,other.x,other.y) < 96
	{x -= hspeed*0.6
	y -= vspeed*0.6}
	}

	with RainDrop
	{
	if point_distance(x+addx,y-addy,other.x,other.y) < 96{
	addx += 10
	addy += 10}
	}

	with SnowFlake
	{
	if point_distance(x+addx,y-addy,other.x,other.y) < 96{
	addx += sin(wave/5)*0.7
	addy += (1-sin(wave/3)/2)*0.7
	wave -= 0.2*0.7}
	}
	*/

	}

	//STEROIDS
	if race = 7 and bwep != 0
	{
	if ultra_got[27]=0
	scrSwapWeps()
	else{
	twep=bwep;
	bwep=wep;
	scrSwapWeps();
	}
	if ammo[wep_type[wep]] < wep_cost[wep] and KeyCont.key_spec[p] = 1 and wep_type[wep] != 0
	scrEmpty()


	if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]
	{
	if wep_auto[wep] = 0 and KeyCont.key_spec[p] = 1
	{
	speed /= 4
	scrFire()
	clicked = 0
	}
	if wep_auto[wep] = 1
	scrFire()
	}

	    scrSwapWeps()
	    if ultra_got[27]=1{//mirror hands
	    bwep=twep
	    }
    
    
	}

	//MIND CONTROL
	if race = 3
	{
	if !audio_is_playing(sndEyesLoop) snd_loop(sndEyesLoop)

	if !sound_isplaying(sndEyesLoopUpg) and Player.skill_got[5] =1 snd_loop(sndEyesLoopUpg)

	with enemy
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with Sheep
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with ExplosiveSheep
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}

	with chestprop
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with HPPickup
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls +increase speed
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))//shouldnt it be more efficient
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))//if I do this cehck outside of the with
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	}}
	with AmmoPickup
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	}}
	with WepPickup
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	}}

	with Rad
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	with BigRad
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{

	if Player.ultra_got[12]==1{//Ultra D don't care about the walls
	x += lengthdir_x(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	y += lengthdir_y(2+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}
	else{
	if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	}

	}}

	}}
	with RadChest
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y))}}
	with projectile
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) and team != 2 and object_index != EnemyLaser
	{if place_free(x+lengthdir_x(1+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180),y)
	x += lengthdir_x(1+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180)
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180))
	y += lengthdir_y(1+Player.skill_got[5]+Player.ultra_got[9],point_direction(x,y,Player.x,Player.y)+180)}}


	if ultra_got[9]=1{//eyes Projectile Style ULTRA A
	    with projectile
	    if team=other.team && object_index!=Laser && object_index!=MegaLaser
	    {
	    x=Player.x+lengthdir_x(8,point_direction(Player.x,Player.y,mouse_x,mouse_y));
	    y=Player.y+lengthdir_y(8,point_direction(Player.x,Player.y,mouse_x,mouse_y))
	    }    

	    }
    
	}

	//SHEEP
	if race==13 && instance_exists(SheepStorm)
	{
	if sheepPower<10
	{sheepPower+=0.52;}
	//direction=stormDirection;
	//speed=10;
	if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
	hspeed -= 1+(skill_got[5]*2)
	if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
	hspeed += 1+(skill_got[5]*2)
	if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
	vspeed -= 1+(skill_got[5]*2)
	if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
	vspeed += 1+(skill_got[5]*2)

	//if speed<4//&&skill_got[5]=0
	//{
	motion_add(stormDirection,7-(skill_got[5]));
	//}
	//else 
	if speed<5//&&skill_got[5]=1
	{speed=5;}
	right=sheepright;

	}
	else if race = 13
	room_speed=30;


	}//END OF HOLD RMB
	else if audio_is_playing(sndEyesLoop) or audio_is_playing(sndChickenLoop) or audio_is_playing(sndEyesLoopUpg) 
	{
	audio_stop_sound(sndEyesLoop) audio_stop_sound(sndEyesLoopUpg) audio_stop_sound(sndChickenLoop)

	if race = 9 //CHICKEN reset time
	{
	room_speed=30;

	with Decoy//CHICKEN VANISH
	{instance_destroy();}

	if my_health > 0
	{
	if bskin=1
	spr_walk = sprMutant9BWalk;
	else if bskin=2
	spr_walk = sprMutant9CWalk;
	else
	spr_walk = sprMutant9Walk;
	}
	if skill_got[5]//THRONEBUTT
	{
	        if skill_got[2]==1//extra feet
	        {
	        maxspeed = 4.5;
	        }
	        else
	        {
	        maxspeed = 4.0;
	        }
	        friction = 0.45
	        image_speed = 0.4
	}
	}

	}
	else if audio_is_playing(sndFrogLoop) || audio_is_playing(sndFrogLoopButt)
	{//FROG
	audio_stop_sound(sndFrogLoop) 
	audio_stop_sound(sndFrogLoopButt)

	if skill_got[5]=1
	{
	snd_play(sndFrogEndButt);
	snd_play(sndFrogGasReleaseButt);
	}
	else
	{
	snd_play(sndFrogEnd);
	snd_play(sndFrogGasRelease);
	}

	}
	else if ultra_got[10]=1{

	//Eyes Monster style Ultra B
	with enemy
	{if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) and team != 2 and object_index != EnemyLaser
	{if place_free(x+lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180),y)
	x += lengthdir_x(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180)
	if place_free(x,y+lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180))
	y += lengthdir_y(1+Player.skill_got[5],point_direction(x,y,Player.x,Player.y)+180)}}

	draw_sprite_ext(sprMindPower,wave*0.4,x,y,right,1,0,c_white,1)

	}
	else if KeyCont.key_spec[p] != 1 and KeyCont.key_spec[p] != 2
	{
	if race = 20 
	{
	with ShopWheel
	alarm[0]=1;

	with ShopAmmo
	alarm[0]=1;
	}
	else if race==21 
	{
	audio_stop_sound(sndHorrorLoopTB);
	audio_stop_sound(sndHorrorLoop);
	horrorcharge=origincharge;
	}
	else if race==22 //rogue
	{

	with PortalStrike
	{

	if other.skill_got[5]
	snd_play(sndPortalStrikeFireTB);
	else
	snd_play(sndPortalStrikeFire);

	    if alarm[0]<0
	    {
    
	    ammo=5;
	    time=2;
	    dir =point_direction(x,y,mouse_x,mouse_y);
    
	    if other.skill_got[5]
	    {
	    ammo=14;
	    exploPos=-96;
	    alarm[1]=1;
	    }
    
	    event_perform(ev_alarm,0)
    
    
	    }
	}

	}
	else if race == 23//FROG
	{

	if ultra_got[90]//intimacy
	toxicamount++

	repeat(toxicamount)
	{

	with instance_create(x,y,ToxicGas)
	{
	motion_add(random(360),0.3+random(1)+(other.skill_got[5]*2));
	}

	}

	toxicamount=0;

	}/*
	else if race = 26//humphry
	{

	if skill_got[2]==1//extra feet
	{
	maxspeed=4.5;
	}
	else
	{
	maxspeed=4;
	}

	image_speed=0.4;

	}*/
	else if race==13 
	{
	if KeyCont.key_spec[p] != 1 && KeyCont.key_spec[p] != 2 || !instance_exists(SheepStorm)//Sheep reset speed
	{
	with SheepStorm
	instance_destroy();


	sheepPower=0;
	if skill_got[2]==1//extra feet
	{
	maxspeed=4.5;
	}
	else
	{
	maxspeed=4;
	}
	}
	}



	}





}
