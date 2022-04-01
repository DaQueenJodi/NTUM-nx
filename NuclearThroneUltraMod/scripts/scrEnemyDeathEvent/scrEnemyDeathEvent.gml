///xxx();
// /@description
///@param
function scrEnemyDeathEvent(){
	if UberCont.opt_gamemode == 9//easy mode
	{
		raddrop*=1.5;
	}
	if instance_exists(Player)
	{
		scrLuckyShot();
		BloodLust();
		var isdoc = Player.race == 25;
		
		
		if Player.race == 17
		{
			scrDrop(0,3);
		}
		with Player
		{
			kills ++;
			//Sheep Ultra B Just A Sheep
			if ultra_got[50]==1
			{
				if justAsheep && instance_number(enemy) < BackCont.enemiesInStartLevel*0.7//if70% left enemies will notice you
				{
				    justAsheep=false;
				    instance_create(x-5,y-16,Notice);
				    instance_create(x+5,y-16,Notice);
				}
			}
			else if (justAsheep && instance_number(enemy) < BackCont.enemiesInStartLevel*0.9) {
				justAsheep = false;
				instance_create(x-5,y-16,Notice);
				instance_create(x+5,y-16,Notice);
			}
			
			//RADS
			if race = 4 && other.raddrop!=0
				other.raddrop += 1

			if isdoc
			other.raddrop=round(other.raddrop*0.5);

			if ultra_got[15]//POWER OVERWHELMING! melting c ultra
			other.raddrop +=2;
			if ultra_got[77]//business hog prosperity
			other.raddrop+=1;

			if crown = 7
			other.raddrop=round(other.raddrop*0.65);

			if crown = 15
			other.raddrop=round(other.raddrop*0.19);

			if Player.crown = 17
			other.raddrop=max(choose(0,1),floor(other.raddrop*0.06));
			
			//TRIGGER FINGERS
			if skill_got[24]
			{
				if isdoc
				{
					reload *=0.565;
					breload *=0.565;
					creload *=0.565;
				}
				else
				{
					reload *=0.6//40%
					breload *=0.6//40%
					creload *=0.6//40%
				}
				triggerfinger=1;//Shine weapon when trigger fingers is working
			}
    
			//RAGE
			if skill_got[28]
			{
				if isdoc
				{
					if race=25//doctor
					rage+=1.25
					else
						rage+=1;
					if rage>365
						rage=365;	
				}
				else
				{
					rage+=1;
					if rage>340
						rage=340;
				}
			}
			//PLANT ULTRA B KILLER
			if ultra_got[18] == 1
			{
			    if place_meeting(x,y,Tangle)
			    {
					instance_create(x,y,Sapling);
			    }
		    }
			//Chicken Ultra A harder to kill
			if ultra_got[33] == 1
		    {
			    with Player
			    {
			        if my_health <= 0
			        {
			        if race = 9 and bleed < 150
			        {
			            if bleed>0{
			            bleed-=30;
			            }
			        }
        
			        }
			    }
		    }
		}
	    if UberCont.opt_gamemode=11//GUN GAME
	    {
	        with Player
	        {
			    do{
			        wep=irandom(maxwep);
			        }until(wep!=69&&wep!=0&& wep!=298)//no oops gun or no wep or golden oops
                
			        if race=7//roids
			        {
			            do{
			            bwep=irandom(maxwep);
			            }until(bwep!=69&&bwep!=0&&wep!=298)//no oops gun
			        }
                
			        if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]]*3
			        {ammo[wep_type[wep]]+=typ_ammo[wep_type[wep]]*3;}
					
			        if rad < wep_rad[wep] * 4
			        rad = wep_rad[wep] * 4;
			    scrWeaponHold();
	        }
	    }
		if instance_number(enemy) <= instance_number(IDPDVan)+1
		{
			if instance_exists(Player)
			{
				if Player.ultra_got[16]
					Player.meltingd=object_index;
			}
			snd_play(sndLastEnemy,0,true)
		}
	}
	else{
		BackCont.kills += 1
		UberCont.ctot_kill[UberCont.race] += 1
	}
	scrRaddrop();
}