if !instance_exists(Player){instance_destroy();exit;}
if KeyCont.key_west[Player.p] = 2 or KeyCont.key_west[Player.p] = 1
hspeed -= 3
if KeyCont.key_east[Player.p] = 2 or KeyCont.key_east[Player.p] = 1
hspeed += 3
if KeyCont.key_nort[Player.p] = 2 or KeyCont.key_nort[Player.p] = 1
vspeed -= 3
if KeyCont.key_sout[Player.p] = 2 or KeyCont.key_sout[Player.p] = 1
vspeed += 3

if speed = 0// && returntoplayer<1 && returntoplayerfast<1
{if sprite_index != spr_hurt
sprite_index = spr_idle}
else
{if sprite_index != spr_hurt
sprite_index = spr_walk}
if sprite_index = spr_hurt
{if image_index > 2
sprite_index = spr_idle}

if mouse_x < x
right = -1
else if mouse_x > x
right = 1

if mouse_y < y
back = 1
else if mouse_y > y
back = -1

if (KeyCont.key_fire[Player.p] = 1 or Player.keyfire = 1) and wep_auto[wep] = 0 and ((wep_type[wep] = 0 or wep_type[wep] = 1) or can_shoot = 1) and reload < 15
clicked = 1

if can_shoot = 1 and Player.ammo[wep_type[wep]] >= wep_cost[wep] and Player.rad>=wep_rad[wep]

{if wep_auto[wep] = 0 and clicked = 1
{
    
    scrFire()
    if Player.ultra_got[45]=0
    {
    Player.ammo[wep_type[wep]] -= wep_cost[wep]
    Player.rad -= wep_rad[wep]
    }
clicked = 0
}
if wep_auto[wep] = 1 and (KeyCont.key_fire[Player.p] = 1 or KeyCont.key_fire[Player.p] = 2 or Player.keyfire > 0)
{
    scrFire()
    if Player.ultra_got[45]=0
    {
    Player.ammo[wep_type[wep]] -= wep_cost[wep]
    Player.rad -= wep_rad[wep]
    }
}
}
else{clicked=0}



if Player.area = 5 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SNOW & ICE TEST
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(Player.skill_got[2]==0)) // EXTRA FEET TEST
friction = 0.1
else
friction = 0.45
}
else if Player.area = 4 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(Player.skill_got[2]==0))//EXTRA FEET TEST
friction = 2
else
friction = 0.45
}
else if friction != 0.45
friction = 0.45




//Speed
if speed > Player.maxspeed
speed = Player.maxspeed

/* */
///tough shell
if (Player.skill_got[31])
{
if ( prevhealth > my_health && hardshell == true )
{

if (( prevhealth-my_health > 2 ) && ( prevhealth-2 != 0 )  )
    {
    my_health+=1;
    hardshell=false;
    }
    
    if my_health>maxhealth
    my_health=maxhealth;

}

if (sprite_index!=spr_hurt)
hardshell=true;
}

/* */
if !instance_exists(Player){instance_destroy();exit;}

/* */
if !instance_exists(Player){instance_destroy();exit;}

if (my_health<prevhealth)
{
	//Took a hit?
	if Player.skill_got[12]//euphoria resistance?
	{
		if !instance_exists(GenCont)&&!instance_exists(EuphoriaShield)&&!instance_exists(LevCont)
		{
		if Player.skill_got[28]//rage
		{
		if my_health<prevhealth//I been hit
		rage=0;
		}

		prevhealth=my_health;
		if race=25
		alarm[3]=35;
		else
		alarm[3]=30;//duration
		instance_create(x,y,EuphoriaShield);//make sure you change speed of animation aswell when changing duration
		}
	}
	if (isAlkaline)//Alkaline Savila
	{
		isAlkaline = false;
		var damageTaken = prevhealth - my_health;
		if (skill_got[9]) //Second stomache
			damageTaken *= 2;
		my_health=min(maxhealth,prevhealth+damageTaken);
		prevhealth = my_health;
		with instance_create(x,y,HealFX)
			depth = other.depth-1;
		with instance_create(x,y,SharpTeeth)
			owner=other.id;
		snd_play(sndHealthPickup)
		var pt = instance_create(x,y,PopupText)
		if my_health = maxhealth
			pt.mytext = "MAX HP";
		else
			pt.mytext = "+"+string(damageTaken)+" HP";
			
		alarm[3]=10;//duration of iframes
	}
}

if(my_health<=0)
{

    if Player.skill_got[25]//strong spirit
    {
    if strongspirit==true&&strongspiritused==false
    {
    my_health=1;
    alarm[1]=20;
    strongspiritused=true;
    strongspirit=false;
    }
    }
    
    if(alarm[1]>0)
    {
        my_health=1;
    }
}


if instance_exists(Player)
{
if point_distance(x,y,Player.x,Player.y)>100
{
returntoplayer=30;
returntoplayerfast=0;
}

if (Player.speed=0)&&point_distance(x,y,Player.x,Player.y)>32&&random(10)<1
{
returntoplayerfast=20;
returntoplayer=0;
}

if point_distance(x,y,Player.x,Player.y)<32
returntoplayerfast=0;

if returntoplayer>0
{//motion_add(point_direction(x,y,Player.x,Player.y),3);
mp_potential_step(Player.x,Player.y,1,false)
returntoplayer--;
motion_add(direction,0.8);
}

if returntoplayerfast>0
{//motion_add(point_direction(x,y,Player.x,Player.y),3);
mp_potential_step(Player.x,Player.y,3,false)
returntoplayerfast--;
motion_add(direction,0.8);
}

}

/* */
/*  */
