/// @description main
if !instance_exists(GenCont) and !instance_exists(LevCont) and visible = 1
{if roll = 0
{if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
hspeed -= 3
if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
hspeed += 3
if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
vspeed -= 3
if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
vspeed += 3


if race=23 && ultra_got[92]=0
speed=maxspeed;

if alarm[4]>0//boiling veins
{
instance_create(x+random(12)-6,y+random(12)-6,Smoke);
}
var thing;
if UberCont.public=0 {
//hacks
	if keyboard_check_pressed(ord("V")) {
		var dangle = random(1)*360;
	    instance_create(x + dcos(dangle)*128,y + dsin(dangle)*64,BigFish);
		thing = instance_create(x + dcos(dangle)*128,y + dsin(dangle)*64,PopupText);
		thing.mytext = "FISH?";
	}
	if keyboard_check_pressed(vk_decimal) {
		var dangle = random(1)*360;
	    instance_create(x + dcos(dangle)*128,y + dsin(dangle)*128,AssassinBoss);
		thing = instance_create(x + dcos(dangle)*128,y + dsin(dangle)*128,PopupText);
		thing.mytext = "ASS?";
	}
	if keyboard_check_pressed(ord("R")) {
	    thing = instance_create(x,y,PopupText)
		thing.mytext = "RADS!";
		rad = GetPlayerMaxRad() + 1;
	}
	/*
	if keyboard_check(ord("R")) {
	    /*repeat(50) {
			instance_create(Player.x,Player.y,Rad);
	    }*/
	//}
	if keyboard_check_pressed(ord("T")) {
		instance_create(Player.x,Player.y,Portal);
		thing = instance_create(x,y,PopupText)
		thing.mytext = "PORTAL!";
	}
	if (keyboard_check_pressed(ord("1")))
	    {
		    if(wep < 1) {
				wep = maxwep;
			} else {
				wep = wep - 1;
			}
			var type = wep_type[wep];
			ammo[type] = typ_amax[type];
			thing = instance_create(x,y,PopupText)
			thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
	    }
	if (keyboard_check_pressed(ord("2")))
	    {
		    if(wep == maxwep) {
				wep = 0;
			} else {
				wep = wep + 1;
			}
			var type = wep_type[wep];
			ammo[type] = typ_amax[type];
			thing = instance_create(x,y,PopupText)
			thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
	    }
	if (keyboard_check_pressed(ord("3")))
	    {
		    if(wep - 50 < 0) {
				wep = maxwep + wep - 50;
			} else {
				wep = wep - 50;
			}
			var type = wep_type[wep];
			ammo[type] = typ_amax[type];
			thing = instance_create(x,y,PopupText)
			thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
	    }
	if (keyboard_check_pressed(ord("4")))
	    {
		    if(wep + 50 > maxwep ) {
				wep = 50 + wep - maxwep;
			} else {
				wep = wep + 50;
			}
			var type = wep_type[wep];
			ammo[type] = typ_amax[type];
			thing = instance_create(x,y,PopupText)
			thing.mytext = "WEAPON "+string(wep)+"#"+string(wep_name[wep])+"!";
	    }
	if (keyboard_check_pressed(ord("F")))
	    {
	    repeat(3)
	    instance_create(Player.x,Player.y,AmmoPickup);
		thing = instance_create(x,y,PopupText)
		thing.mytext = "AMMO!";
	    }
	if (keyboard_check_pressed(vk_tab))
	    {
	    repeat(3)
	    instance_create(Player.x,Player.y,HPPickup);
		thing = instance_create(x,y,PopupText)
		thing.mytext = "HEALTH!";
	    }
	if (keyboard_check_pressed(ord("H")))
	    {
			
		var dangle = random(1)*360;
		/*
	    instance_create(x + dcos(dangle)*24,y + dsin(dangle)*24,HealthChest);
		thing = instance_create(x + dcos(dangle)*24,y + dsin(dangle)*24,PopupText);
		thing.mytext = "MORE HEALTH!";
		*/
		loops++;
		thing = instance_create(x + dcos(dangle)*24,y + dsin(dangle)*24,PopupText);
		thing.mytext = "INCREASE LOOP! "+string(loops);
	    }
	if (keyboard_check_pressed(ord("Y")))
	    {
	    wepmod1++
		thing = instance_create(x,y,PopupText)
		thing.mytext = "WEAPON MOD "+string(wepmod1)+"!";
	    }
	if (keyboard_check_pressed(ord("O")))
	    {
	    instance_create(x+256,y,IDPDVan);
		thing = instance_create(x,y,PopupText)
		thing.mytext = "VAN?";
	    }
	if (keyboard_check_pressed(ord("L")))
	    {
					var dangle = random(1)*360;

			invertedportalcounter = invertedportaldelay
			thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,PopupText);
			thing.mytext = "INVERTED PORTAL!";
	    }
	if (keyboard_check_pressed(ord("G")))
	    {
		var dangle = random(1)*360;
	    instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,WeaponChest);
		thing = instance_create(x + dcos(dangle)*32,y + dsin(dangle)*32,PopupText);
		thing.mytext = "WEAPON CHEST!";
	    }
	if (keyboard_check_pressed(vk_delete))
	    {
		repeat(15) {
			var dangle = random(1)*360;
			var explosiondist = 40 + random(50);
			instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,SmallExplosion);
		}
		repeat(10) {
			var dangle = random(1)*360;
			var explosiondist = 64 + random(64);
			instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,Explosion);
			thing = instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,PopupText);
			thing.mytext = "EXPLOSIONS!";
		}
		repeat(15) {
			var dangle = random(1)*360;
			var explosiondist = 64 + random(80);
			instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,Explosion);
		}
		repeat(10) {
			var dangle = random(1)*360;
			var explosiondist = 80 + random(80);
			instance_create(x + dcos(dangle)*explosiondist,y + dsin(dangle)*explosiondist,SmallExplosion);
		}
		snd_play(sndExplosionXL,0.05);
		snd_play(sndExplosionL,0.05);
		snd_play(sndExplosion,0.05);
		snd_play(sndExplosionS,0.05);
	}
//*/    
}

if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{	
	hurtTime++;
	if (image_index > 2 && hurtTime > hurtDuration)
	{
		sprite_index = spr_idle
		hurtTime = 0;
	}
}

if mouse_x < x
right = -1
else if mouse_x > x
right = 1

if mouse_y < y
back = 1
else if mouse_y > y
back = -1

scrPowers()
}
else
{
//rolling
speed = 6.3+skill_got[2]*0.5//the rolling speed code is far below
angle += 50*right

if speed = 0
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if skill_got[5] = 1
{
if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
hspeed -= 3
if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
hspeed += 3
if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
vspeed -= 3
if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
vspeed += 3
instance_create(x,y,FishBoost)


/*if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
hspeed -= 3
if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
hspeed += 3
if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
vspeed -= 3
if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
vspeed += 3*/
if ( (angle > 360 or -angle > 360) && !(KeyCont.key_spec[p] = 1 or KeyCont.key_spec[p] = 2) )
{
angle = 0
roll = 0
}

}
else{
instance_create(x+random(6)-3,y+random(6),Dust)

if angle > 360 or -angle > 360
{
angle = 0
roll = 0
}}
}



if bleed > 0 and my_health > 0
{
audio_stop_sound(sndChickenHeadlessLoop)
snd_play(sndChickenRegenHead)
bleed = 0
if bskin=2
{
spr_idle = sprMutant9CIdle
spr_hurt = sprMutant9CHurt
spr_walk = sprMutant9CWalk
}
else if bskin=1
{
spr_idle = sprMutant9BIdle
spr_hurt = sprMutant9BHurt
spr_walk = sprMutant9BWalk
}
else
{
spr_idle = sprMutant9Idle
spr_hurt = sprMutant9Hurt
spr_walk = sprMutant9Walk}
with Corpse{
if other.bskin=2
sprite_index = mskPickupThroughWall;//invisible basicly
else if other.bskin=1
sprite_index = sprMutant9BHeadIdle
else
sprite_index = sprMutant9HeadIdle
instance_destroy()}
}

if my_health <= 0
{
if race = 9 and bleed < 150
{
if bleed = 0
{
maxhealth-=2;
if maxhealth<0
{maxhealth=0}

snd_play(sndChickenLoseHead)
snd_loop(sndChickenHeadlessLoop)
repeat(12){
with instance_create(x,y,BloodStreak){
motion_add(random(360),2+random(3))
image_angle = direction}}



if bskin=2
{
spr_idle = sprMutant9CHeadlessIdle
spr_hurt = sprMutant9CHeadlessHurt
spr_walk = sprMutant9CHeadlessWalk
}
else{
spr_idle = sprMutant9HeadlessIdle
spr_hurt = sprMutant9HeadlessHurt
spr_walk = sprMutant9HeadlessWalk
}


with instance_create(x,y,Corpse)
{
size = 1
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
if other.bskin=2
sprite_index = mskPickupThroughWall;//invisible basicly
else if other.bskin=1
sprite_index = sprMutant9BHeadIdle;
else
sprite_index = sprMutant9HeadIdle;
image_xscale = other.right
if speed > 16
speed = 16
}

Sleep(60)
}

if random(12) < 1{
with instance_create(x,y-4,BloodStreak){
motion_add(45+random(90),2+random(3))
image_angle = direction}}

if bleed > 100
{
with instance_create(x,y,BloodStreak){
motion_add(random(360),2+random(3))
image_angle = direction}
}

bleed += 1
}
else
instance_destroy()
my_health = 0
}

//SHOOTING!! AWW YEAH

if !(instance_exists(CrystalShield))
{
IsShielding=false;
}
else if (CrystalShield.sprite_index!=sprShieldDisappear)
{
IsShielding=true;
}
else{
IsShielding=false;
}
if( (!(IsShielding)||(ultra_got[7]==1))&&(flying=0) && (UberCont.opt_gamemode!=12||instance_exists(Marker)) ){
if race = 7{//Roids always auto fire
wep_auto[wep] = 1 wep_auto[bwep] = 1}


if (KeyCont.key_fire[p] = 1 or keyfire = 1) and wep_auto[wep] = 0 and ((wep_type[wep] = 0 or wep_type[wep] = 1) or can_shoot = 1) and reload < 15
clicked = 1

if (KeyCont.key_fire[p] = 1 or keyfire = 1) and wep_type[wep] != 0
{//this could be done better
if  ammo[wep_type[wep]] < wep_cost[wep]
{
if wep == 29|| wep==60 || wep==61 || wep==83 || wep==84 || wep==132//|| wep==109//ALL THE BLOOD WEAPONS!
{//glove is not included because that shits just to buggy
//BLOOD LAUNCHER,Pistol,Shotgun,rifle,triple,bulletshotty
ammo[wep_type[wep]] += wep_cost[wep]
sprite_index = spr_hurt
image_index = 0
my_health -= 1
snd_play(snd_hurt, hurt_pitch_variation)
Sleep(40)
alarm[3]=0;//remove immunity from bloodglove
}
else
scrEmpty()
}
if rad-wep_rad[wep]<0
{//not enough radiation
clicked = 0
scrEmptyRad();
other.wkick = -2
}
}

if can_shoot = 1 and (ammo[wep_type[wep]] >= wep_cost[wep] || wep_type[wep] == 0) and rad>=wep_rad[wep]
{
if wep_auto[wep] = 0 and clicked = 1
{

    if race=11&&ultra_got[44]=1&&instance_exists(Marker){ //Hunters ultra D
    
    crackshotsfired=instance_number(Marker);//+1;
    with Marker{
    if MarkerNr=other.crackshotsfired{
            var mox,moy;
            var len,dir;
            if UberCont.opt_fulscrn=1
            len=point_distance(Player.x,Player.y,target.x,target.y)*4
            else{
            len=point_distance(Player.x,Player.y,target.x,target.y)
            len*=(window_get_height())*0.0038;
            }
            
            dir=point_direction(Player.x,Player.y,target.x,target.y);
            
            mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
            moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);
            
            if mox > window_get_x()+window_get_width()
            mox = window_get_x()+window_get_width()-8;
            if mox < window_get_x()
            mox = window_get_x()+8;
            if moy > window_get_y()+window_get_height()
            moy = window_get_y()+window_get_height()-8;
            if moy < window_get_y()
            moy = window_get_y()+8;
            
            display_mouse_set(mox,moy);
            
    }
    
            }
    alarm[11]=1;
    if instance_number(Marker)>0
            reload*=instance_number(Marker)*0.5;
    
        }
    else{
    
    scrFire()
    }
    
clicked = 0
}
if wep_auto[wep] = 1 and (KeyCont.key_fire[p] = 1 or KeyCont.key_fire[p] = 2 or keyfire > 0)
{


    if race=11&&ultra_got[44]=1&&instance_exists(Marker){ //Hunters ultra D
    
    crackshotsfired=instance_number(Marker);//+1;
    with Marker{
    if MarkerNr=other.crackshotsfired{
            var mox,moy;
            var len,dir;
            if UberCont.opt_fulscrn=1
            len=point_distance(Player.x,Player.y,target.x,target.y)*4
            else{
            len=point_distance(Player.x,Player.y,target.x,target.y)
            len*=(window_get_height())*0.0038;
            }
            
            dir=point_direction(Player.x,Player.y,target.x,target.y);
            
            mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
            moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);
            
            if mox > window_get_x()+window_get_width()
            mox = window_get_x()+window_get_width()-8;
            if mox < window_get_x()
            mox = window_get_x()+8;
            if moy > window_get_y()+window_get_height()
            moy = window_get_y()+window_get_height()-8;
            if moy < window_get_y()
            moy = window_get_y()+8;
            
            display_mouse_set(mox,moy);
            
    }
    
            }
    alarm[11]=1;
    
                if instance_number(Marker)>0
            reload*=(instance_number(Marker)*0.2);
        }
    else{
    
    scrFire()
    }
}
}

}

//SWAP WEPS
if KeyCont.key_swap[p] = 1 and bwep != 0
{
instance_create(x,y,WepSwap)
scrSwapWeps()

if ultra_got[27]//ROIDS MIRROR HANDS
reload*=0.5

snd_play(wep_swap[wep])
if (curse)
{
	snd_play(sndSwapCursed);
}
if (scrCheckGold(wep))
{
	snd_play(sndSwapGold);	
}
if ultra_got[27]
{
bwepangle=wepangle;
}
}


//crown of hatred
if crown = 6
{
decay -= 1
if decay <= 0 and my_health > 1 && alarm[3]<1
{
Sleep(30)
my_health -= 1


sprite_index = spr_hurt
image_index = 0
snd_play(snd_hurt, hurt_pitch_variation)

repeat(12)
{with instance_create(x,y,Rad)
motion_add(random(360),2+random(4))}

decay = 300
}
}
}


if (rad >  GetPlayerMaxRad())
{
if level < maxlevel || UberCont.opt_gamemode == 22
{
snd_play(sndLevelUp)
//rad -= level*60
rad = 0;
level += 1

if level=8 && area < 4 && race = 25
scrUnlockBSkin(25,"FOR REACHING LEVEL 8#BEFORE THE CRYSTAL CAVES#AS MUTATION DOCTOR",0);

repeat(level-6)
instance_create(x,y,IDPDSpawn)
with instance_create(x,y,PopupText)
mytext = "LEVEL "+string(other.level)+"!"
instance_create(x,y,LevelUp)
skillpoints += 1

}
else
{
rad = GetPlayerMaxRad();
if ultra_got[83]
scrUnlockBSkin(21,"FOR GAINING THE MAXIMUM AMOUNT#OF RADS AS HORROR",0);
}
}

//reload stuff
if reload > 0
{
reload -= 1
if race = 6
{//YV fire rate boost
reload -= 0.265//0.25
    
}
if ultra_got[21]//ULTRA A
    {
    reload -=0.45;
    }
//Weaponsmith one with the gun fire rate

    if ultra_got[67]
    {
        //Ultra c one with the gun
        if wep_type[wep] != 0 && wep != 24 && wep != 36 && wep != 53 && wep!=198 && wep!=37 && wep!=126 && wep!=108 && wep!=109 && wep!=123 && wep != 222 && wep!=239//if wep_type[wep]==0 // You are holding a melee weapon
        {
        reload -=0.64;
        }
    }

if skill_got[22] = 1
{
//nerves of steel g  STRESS
var reduction = 0;
	if race = 25
	{
		reduction = (1-(my_health/maxhealth))*0.62
	}
	else
	{
		reduction = (1-(my_health/maxhealth))*0.68//*1//0.35 the original has 80% boost
	}
	if UberCont.opt_gamemode == 24//SHARP STRESS GAMEMODE
		reduction *= level;
	reduction = max(reduction,0);
	reload -= reduction
	breload -= reduction;
	creload -= reduction;
}

if race=25
{
accuracy=standartAccuracy;
}

if skill_got[28] = 1
{
//rage
var rageAccuracy;
var reduction = rage*0.0054;
reload -= reduction//0.01//0.009 when cap is 100
breload -= reduction;
creload -= reduction;

rageAccuracy = rage*0.001//0.0011// caps at 0.10 increase when cap = 100
accuracy=standartAccuracy+rageAccuracy;//standartAccuracy will be changed by eagle eyes so this scales with that.
}


if ultra_got[102]//Humphry Ultra B Rapid facial hair growth
{
reload -= HumphrySkill*0.0058//0.0055//0.01//0.009 when cap is 100
}

if race=25
{

accuracy=accuracy-(HumphrySkill*0.1);
if accuracy<0
accuracy=0;

}



if reload <= 0
{
can_shoot = 1

if ammo[wep_type[wep]] < wep_cost[wep] and wep_type[wep] != 0
scrEmpty()

wepflip = -wepflip

if wep_type[wep] = 0
snd_play(sndMeleeFlip)

if wep_type[wep] = 3
snd_play(sndCrossReload)
if string_copy(wep_name[wep],0,6) = "PLASMA"
{
if skill_got[17] = 1
snd_play(sndPlasmaReloadUpg)
else
snd_play(sndPlasmaReload)
}
if wep_type[wep] = 2
{
repeat(wep_cost[wep])
{with instance_create(x,y,Shell)
{sprite_index = sprShotShell
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(40)-20,2+random(2))}}

wkick = -1
if wep = 8
wkick = -2
snd_play(sndShotReload)
}
}
}
if race = 7 and breload > 0//steroids
{


breload -= 1
if breload <= 0
{
bcan_shoot = 1

if ultra_got[27]{//fk u JW your system is shit (no offense)
var roidsWepangle;//damage control
roidsWepangle=bwepangle;//steroids melee shit
scrSwapWeps();

}
if ultra_got[27]=0 && wep_type[bwep]=0//mirror hands the weird melee bug fix yo!
bwepflip = -bwepflip


if ammo[wep_type[bwep]] < wep_cost[bwep] and wep_type[bwep] != 0
scrEmptyB()

if wep_type[bwep] = 0 //&& ultra_got[27]=0//mirror hands melee bug fix part 2
snd_play(sndMeleeFlip)
if wep_type[bwep] = 3
snd_play(sndCrossReload)
if wep_type[bwep] = 2
{
repeat(wep_cost[bwep])
{with instance_create(x,y,Shell)
{sprite_index = sprShotShell
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(40)-20,2+random(2))}}
if ultra_got[27]
{
wkick = -1
if wep = 8
wkick = -2
}
else{
bwkick = -1
if bwep = 8
bwkick = -2}
snd_play(sndShotReload)
}
    if ultra_got[27]{
    scrSwapWeps();
    bwepangle=roidsWepangle;//what a mess
        }
}
}


if lsthealth < my_health
{
drawlowhp = 30
lsthealth += 1
}
if sprite_index != spr_hurt and lsthealth > my_health
{
if drawlowhp < 30 and my_health <= 4
snd_play(snd_lowh, 0, false, false)
drawlowhp = 30
lsthealth -= 0.5

}
if  ultra_got[40]=1//Ultra D
{
if lsthealth > my_health
{
if canrebel = 1
{
canrebel = 0
//REBEL DEFENCE PASSIVE
ang = random(360)
{
repeat(14)
{
with instance_create(x,y,AllyBullet)
{
motion_add(other.ang,5)
image_angle = direction
team = other.team
}
ang += 360/14
}
}
}
}
else
canrebel = 1
}
if speed > maxspeed
speed = maxspeed

if roll = 1
speed = 6.3+skill_got[2]*0.5//xtra feet rolling


if ((area = 5 || area = 107) and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker))
{
//SNOW & ICE TEST
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0&&race!=18&&race!=24)) // EXTRA FEET TEST
friction = 0.1
else
friction = 0.45
}
else if area = 4 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0&&race!=18&&race!=24))//EXTRA FEET TEST
friction = 2
else
friction = 0.45
}
else if area = 111 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//INVERTED SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0&&race!=18&&race!=24))//EXTRA FEET TEST
speed+=1;
}


if reload > 0
can_shoot = 0
else
can_shoot = 1

if (ultra_got[42]==1)//HUNTER ULTRA B Homing projectiles
{
    with projectile
    {
    
        if (team==2)
        {
        if object_index!=Laser&&object_index!=MegaLaser&&object_index!=Lightning&&object_index!=Tentacle
        {
        if instance_exists(enemy)
        {
            if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0
            {
                if (direction<point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) )
                {
                direction+=4+Player.skill_got[19];//eagle eyes improves that shit
                image_angle+=4+Player.skill_got[19];
                }
                else if (direction>point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y) )
                {
                direction-=4+Player.skill_got[19];
                image_angle-=4+Player.skill_got[19];
                }
            }
        }
        }
        }
    }
}

if (ultra_got[43]=1)//HUNTER ULTRA C Focused projectiles
{
    if instance_exists(Marker)
    {
    with projectile
{


if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ) 
 and object_index != EnemyLaser and object_index!=Laser&&object_index!=MegaLaser&&object_index!=Lightning&&object_index!=Tentacle
{if place_free(x+lengthdir_x(1.9,point_direction(x,y,Marker.x,Marker.y)),y)
x += lengthdir_x(1.9,point_direction(x,y,Marker.x,Marker.y))
if place_free(x,y+lengthdir_y(1.9,point_direction(x,y,Marker.x,Marker.y)))
y += lengthdir_y(1.9,point_direction(x,y,Marker.x,Marker.y))}
image_angle=direction;

if (direction<point_direction(x,y,Marker.x,Marker.y) )
            {
            direction+=1;
            image_angle+=1;
            }
            else if (direction>point_direction(x,y,Marker.x,Marker.y) )
            {
            direction-=1;
            image_angle-=1;
            }


}
    
    }
    
}
/*
if race=12
{
if instance_exists(YungCuzDupe){//Yung cuz's dupes
    with enemy
    {
    if point_distance(x,y,Player.x,Player.y)<point_distance(x,y,instance_nearest(x,y,YungCuzDupe).x,instance_nearest(x,y,YungCuzDupe).y)
    {target = instance_nearest(x,y,Player)}
    else{target = instance_nearest(x,y,YungCuzDupe)}
    }
} 

}

/* */
///homing projectiles mod

if moddelay=0{

with projectile
{
    if team=other.team//player projectile
    {
        if Mod1=13||Mod2=13||Mod3=13||Mod4=13
        { 
            if (team==2)
            {
                if object_index!=Laser&&object_index!=MegaLaser&&object_index!=Lightning&&object_index!=Tentacle
                {
                    if instance_exists(enemy)
                    {
                        if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0
                        {
                        if Mod1=13
                        motion_add(point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y),0.2);
                        if Mod2=13
                        motion_add(point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y),0.2);
                        if Mod3=13
                        motion_add(point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y),0.2);
                        if Mod4=13
                        motion_add(point_direction(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y),0.2);
                        }
                    }
                }
            }
        }
        
    }

}

}

/* */
///ELEMENTOR ultra D &strong spirit
if skill_got[25]//strong spirit
    {
    
    if ( strongspiritused=false && my_health=maxhealth || ( strongspiritused=false && my_health > round(maxhealth*0.75) && race = 25 ) )
    {
    //strongspiritused=false;
    if strongspirit=false
    {
    snd_play(sndStrongSpiritGain);
    strongspiritregained++;
    
    //UNLOCK VIKING
    if strongspiritregained>3
    scrUnlockCharacter(16,"FOR REGAINING STRONG SPIRIT 4 TIMES")
    
    }
    
    strongspirit=true;
    
    
    }
    
    }
if instance_exists(enemy){    
if ultra_got[96]//ELEMENTOR lightning ultra
{
if random(100)<2&&point_distance(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y)<300{//constant sparks annoy me so only if enemy is close
snd_play(choose(sndSpark1,sndSpark2));
    repeat(irandom_range(1,5))
    {
    with instance_create(x,y,Lightning)
{image_angle = random(360);
team = other.team
ammo = irandom_range(4,18)
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}
    }
    }

}}
if ultra_got[16]{
with meltingd
instance_destroy();}

/* */
///lava and frost
if area=7&&race!=18&&race!=24&&skill_got[14]==0//angel & elementor boiling veins
{

    if collision_point(x,y,FloorLava,0,1) || collision_point(x,y,FloorExplo,0,1)
    {
    if alarm[4]<=0
    alarm[4]=4;
    
    hotfloor+=1;
        if hotfloor>43//time before crisping
        {
        with instance_create(x,y,TrapFire){//burn!
        team=1;}
        hotfloor=0;//allright you've burned now continue
        
        //GAMEMODE UNLOCKABLE WALL IS LAVA
        scrUnlockGameMode(4,"FOR STANDING IN LAVA");
        
        
        }
    }
else
{
hotfloor=0;//calm da fuk down
}

}
if area=108&&race!=18&&race!=24//angel & elementor don't bother with this stuff
{

    if place_meeting(x,y,FloorLava) || place_meeting(x,y,FloorExplo)
    {
    if skill_got[2]==0
    friction = 0.1
    
    //when player isn't frozen increase the time that determines when it should get frozeen
    if frozen<1
    getFrozen++;
    
    if getFrozen>24
    {
    instance_create(x,y,FrozenPlayer);
    frozen=15;
    getFrozen=0;
    }

    }
    else
    {
    friction = 0.45
    getFrozen=0;
    }


}

/* */
///Frozen
if frozen>0
{
speed=0;
x=xprevious;
y=yprevious;
frozen--;
}

/* */
///Superhot
if wep=201||wep=202
{

if speed<2
{
with projectile{

if speed>2 &&object_index!=Flame&&object_index!=TrapFire&&object_index!=HotDrakeFlameCannon&&object_index!=HotDrakeSplitBall&&object_index!=Bolt&&object_index!=Splinter&&object_index!=UltraBolt{
speed*=0.1;}

}

with enemy
speed*=0.1;

}
else{
with projectile
{
if typ!=0&&object_index!=Flame&&object_index!=TrapFire&&object_index!=HotDrakeFlameCannon&&object_index!=HotDrakeSplitBall&&object_index!=Bolt&&object_index!=Splinter&&object_index!=UltraBolt{
    if speed<8
    {speed+=1;}
    else
    {speed=8;}
    }
}}

}

/* */
///extra feet dodging bonus

if skill_got[2]
{
if instance_exists(projectile)&&extrafeetalarm<1{
    if point_distance(x,y,projectile.x,projectile.y)<31//a close projectile is spotted
    {
        with projectile
        {
        if instance_exists(Player){
        if point_distance(x,y,Player.x,Player.y)<30{//use close projectile
            if team!=other.team//NOT FROM PLAYA!? O_O
            {                     
            other.extrafeetalarm=20;//after this time we check if you've dodged this
            other.extrafeetdodged=true;
            // change a variable here so that you cannot spawn even more items yo?
            }
            }}
        }
    }
}

}


if extrafeetalarm>0
extrafeetalarm--;

if extrafeetalarm==1 && extrafeetdodged
{
if race=25
{
instance_create(x,y-10,Notice);
scrDrop(55,0);
}
else
{
instance_create(x,y-10,Notice);
scrDrop(50,0);
}

}



/* */
///Delay before taking melee damage again
if meleeimmunity>0
meleeimmunity--;

/* */
///time and unlock

microseconds+=2;

if microseconds>60
{
seconds+=1;
microseconds=0;
}


/* */
///spawn inverted portal
    if (invertedportalcounter>invertedportaldelay)&&instance_exists(Floor)
    {
    with instance_create(instance_furthest(x,y,Floor).x+16, instance_furthest(x,y,Floor).y+16,Portal)
    {inverted=true;
    depth=0;
    }
    
    invertedportalcounter=0;
    }
    
    if invertedportalcounter>0
    invertedportalcounter++;


/* */
///Gamepad aiming
var h_point = gamepad_axis_value(0, gp_axisrh);
var v_point = gamepad_axis_value(0, gp_axisrv);

if ((h_point != 0) || (v_point != 0))//&&!instance_exists(GenCont)&&!instance_exists(LevCont)&&UberCont.paused=0
{
var dir = point_direction(0,0, h_point, v_point);
//var dif = angle_difference(pdir, image_angle);
//image_angle += median(-20, dif, 20);



var mox,moy;
var len,dir;
//if UberCont.opt_fulscrn=1
//len=point_distance(Player.x,Player.y,target.x,target.y)*4
//else{
len=point_distance(x,y,gp_axisrh,gp_axisrv)*0.011;
//len*=(window_get_height())*0.0037;
//}

//dir=point_direction(Player.x,Player.y,target.x,target.y);

mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);

if mox > window_get_x()+window_get_width()
mox = window_get_x()+window_get_width()-8;
if mox < window_get_x()
mox = window_get_x()+8;
if moy > window_get_y()+window_get_height()
moy = window_get_y()+window_get_height()-8;
if moy < window_get_y()
moy = window_get_y()+8;

display_mouse_set(mox,moy);

//the weirdest aim assist
with projectile
{
if team=other.team&&instance_exists(enemy)&&instance_exists(Wall)//player projectile
{
var homehere = instance_nearest(x,y,enemy);
if collision_line(x,y,homehere.x,homehere.y,Wall,0,0) < 0&&speed>1
motion_add(point_direction(x,y,homehere.x,homehere.y),0.07);

}
}

}

/* */
///Angel flying through walls
if race=18
{
    if instance_exists(Floor) && instance_exists(Wall)
    {
    if flying>0
    {
    

    flying--;
    if flying<1
    mask_index=mskPlayer;
    }
    
     var ground = instance_nearest(x,y,Floor);
     var wall = instance_nearest(x,y,Wall);
     
        if !place_meeting(x,y,Floor)&&point_distance(x,y,wall.x,wall.y)>16&&point_distance(x,y,ground.x,ground.y)>28//OUT OF BOUNDS
        {
        motion_add(direction+180,speed);
        motion_add(point_direction(x,y,ground.x+16,ground.y+16),0.9);
        //if point_distance(x,y,wall.x,wall.y)>17
        //motion_add(direction,1);
        }
        
    }
    //GET HURT when flying too long unless acent ultra D
    if ( ( !place_meeting(x,y,Floor) || flying>0 || mask_index=mskPickupThroughWall || place_meeting(x,y,Wall) )  && !instance_exists(GenCont) && !instance_exists(LevCont) && ultra_got[72]==0 )//NOT ASCND ULTRA
    {
    //var wall = instance_nearest(x,y,Wall);
    var ground = instance_nearest(x,y,Floor);
    motion_add(point_direction(x,y,ground.x+16,ground.y+16),0.6);

    
    flyduration++
    }
    else
    {
    flyduration=0;
    //flypush=0;
    
    }
    if flyduration>flymax
    {my_health--;
    flyduration=20;
    snd_play(snd_hurt, hurt_pitch_variation);
    image_index=0;
    sprite_index=spr_hurt;
    repeat(5+irandom(5) )
    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
    motion_add(random(360),5+random(10) );}
    

    }
    if flyduration = 15
    {
    snd_play(sndStatueDead);
    }
    if flyduration>10&&random(2)<1
    {
    instance_create(x+random(16)-8,y+random(8)-4,Feather);
    //snd_play(sndStatueCharge);
    if flyduration < 20
    audio_sound_pitch(sndStatueCharge,1-flyduration*0.01)
    else
    audio_sound_pitch(sndStatueCharge,1-20*0.01)
    
    if !audio_is_playing(sndStatueCharge)
    audio_play_sound(sndStatueCharge,100,0)
    }
    if flyduration>25//&&random(2)<1
    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
    motion_add(random(360),5+random(10) );}
    
if ultra_got[71]//tranquility
{
tranquilitydelay--;

if tranquilitydelay <=0
tranquilitydelay=0;
}
    
}



/* */
///Humphry thronebutt
if race = 26
{
    if HumphryTB=1 && HumphrySkill>0
    {
    HumphryTBcount++;
    
    //if HumphryTBcount=2||HumphryTBcount=6||HumphryTBcount=9 ||HumphryTBcount=12
    HumphrySkill--;
    
    if HumphryTBcount>=8
    {
    if my_health<maxhealth
    {
    instance_create(x,y,HealFX)
    
    snd_play(sndHealthPickup);
    
    my_health++;
    }
    HumphryTBcount=0;
    //HumphrySkill--;
    }
    
    }
    else if HumphrySkill<1
    {
    HumphrySkill=0
    HumphryTB=0;
    }
}

/* */
///Hunter damage boost delay
if damageboostdelay>0
damageboostdelay--;

/* */
///Elementor fire ultra

if ultra_got[95]
{
with instance_create(x,y,Flame)
{motion_add(other.direction+180+random(40)-20,0.2+random(2))
team = other.team
depth=-1;}

}

/* */
///moddelay
if moddelay>0
moddelay--;

/* */
///Rogue  heat
if (RogueHeat==true)
{
    if ( instance_number(enemy) < BackCont.enemiesInStartLevel * 0.8 )
    {
    instance_create(x,y,IDPDSpawn);
    RogueHeat=false
    }
}

/* */
///Lets try aggro
if crown = 18
{

with enemy
{
if alarm[1]>8
alarm[1]=8;
}

}
wave += 0.4;//Looping animations

//Hammer head
if hammerheadcounter > 0
{
	var msk = mask_index;
	mask_index = mskWallBreak;
	if place_meeting(x,y,Wall)
	{
		nearWall = true;
		mask_index = msk;
		if place_meeting(x+hspeed,y+vspeed,Wall)
		{
			
			hammerheadtimer += 1;

			alarm[5]=12;//timer before hammerhead continuation stops
			
			if hammerheadtimer > 8
			{
				hammerheadcounter --;
				var debrisAmount = 4;
				var debrisMultiply = 2;
				if (hammerheadcounter > 0)
				{
					snd_play(sndHammerHeadProc);
					scrDrop(1,0.5);
				}
				else
				{
					snd_play(sndHammerHeadEnd);
					scrDrop(20,10);
					nearWall = false;
					debrisAmount += 2;
					debrisMultiply += 2;
				}
				instance_create(x,y,WallBreak);
				//More debris
				repeat(debrisAmount)
				with instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
					speed *= debrisMultiply;
				
				scrRaddrop(1);
			}
		}
	}
	else
		nearWall = false;
	
	mask_index = msk;
}