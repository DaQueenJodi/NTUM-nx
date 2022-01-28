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

//SHOOTING!! AWW YEAH


/*


if (KeyCont.key_fire[Player.p] = 1 or keyfire = 1) and wep_auto[wep] = 0 and ((wep_type[wep] = 0 or wep_type[wep] = 1) or can_shoot = 1) and reload < 15
clicked = 1

if ammo[wep_type[wep]] < wep_cost[wep] and (KeyCont.key_fire[p] = 1 or keyfire = 1) and wep_type[wep] != 0
{
if wep == 29|| wep==60 || wep==61 || wep==83 || wep==84//ALL THE BLOOD WEAPONS!
{
//BLOOD LAUNCHER,Pistol,Shotgun
ammo[wep_type[wep]] += wep_cost[wep]
sprite_index = spr_hurt
image_index = 0
my_health -= 1
snd_play(snd_hurt)
Sleep(40)
}
else
scrEmpty()
}
if can_shoot = 1 and ammo[wep_type[wep]] >= wep_cost[wep]
{if wep_auto[wep] = 0 and clicked = 1
{
    if race=11&&ultra_got[44]=1&&instance_exists(Marker){ //Hunters ultra D
            with Marker{
            window_views_mouse_set(target.x,target.y)
            with Player{scrFire()}
            }
            reload*=instance_number(Marker);
        }
    else{
    scrFire()
    }
    
clicked = 0
}
if wep_auto[wep] = 1 and (KeyCont.key_fire[p] = 1 or KeyCont.key_fire[p] = 2 or keyfire > 0)
{
    if race=11&&ultra_got[44]=1&&instance_exists(Marker){ //Hunters ultra D
            with Marker{
            window_views_mouse_set(target.x,target.y)
            with Player{scrFire()}
            }
            reload*=instance_number(Marker);
        }
    else{
    scrFire()
    }
}
}



//SWAP WEPS
if KeyCont.key_swap[1] = 1 and bwep != 0
{
instance_create(x,y,WepSwap)
scrSwapWeps()
snd_play(wep_swap[wep])
}


//crown of hatred
if crown = 6
{
decay -= 1
if decay <= 0 and my_health > 1
{
Sleep(30)
my_health -= 1


sprite_index = spr_hurt
image_index = 0
snd_play(snd_hurt)

repeat(12)
{with instance_create(x,y,Rad)
motion_add(random(360),2+random(4))}

decay = 300
}
}
}



if rad > level*60
{
if level < 10
{
snd_play(sndLevelUp)
rad -= level*60
level += 1
repeat(level-4)
instance_create(x,y,IDPDSpawn)
with instance_create(x,y,PopupText)
mytext = "LEVEL "+string(other.level)+"!"
instance_create(x,y,LevelUp)
skillpoints += 1
}
else
rad = level*60
}

//reload stuff
if reload > 0
{
reload -= 1
if race = 6
{//YV fire rate boost
reload -= 0.265//0.25
if (skillsChosen>7){
    if ultra_got[21]//ULTRA A
    {
    reload -=0.45;
    }}
}
if skill_got[22] = 1
{
//nerves of steel g  STRESS
reload -= (1-(my_health/maxhealth))*1//0.35
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
if race = 7 and breload > 0
{
breload -= 1
if breload <= 0
{
bcan_shoot = 1

bwepflip = -bwepflip

if ammo[wep_type[bwep]] < wep_cost[bwep] and wep_type[bwep] != 0
scrEmptyB()

if wep_type[bwep] = 0
snd_play(sndMeleeFlip)
if wep_type[bwep] = 3
snd_play(sndCrossReload)
if wep_type[bwep] = 2
{
repeat(wep_cost[bwep])
{with instance_create(x,y,Shell)
{sprite_index = sprShotShell
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(40)-20,2+random(2))}}

bwkick = -1
if bwep = 8
bwkick = -2
snd_play(sndShotReload)
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
snd_play(snd_lowh)
drawlowhp = 30
lsthealth -= 0.5

}
if  ultra_got[40]=1//Ultra D
{
if lsthealth > my_health and race = 10
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
speed = 6.3+skill_got[2]*0.5


if area = 5 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SNOW & ICE TEST
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0)) // EXTRA FEET TEST
friction = 0.1
else
friction = 0.45
}
else if area = 4 and !instance_exists(GenCont) and !instance_exists(LevCont) and !instance_exists(FloorMaker)
{
//SPIDERWEBS
if ((instance_nearest(x-16,y-16,Floor).styleb == 1)&&(skill_got[2]==0))//EXTRA FEET TEST
friction = 2
else
friction = 0.45
}
else if friction != 0.45
friction = 0.45

//cursed weps
if curse = 1 and random(6) < 1
{

instance_create(x+lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y))+random(6)-3,
y+lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y))+random(6)-3,Curse)
}
if reload > 0
can_shoot = 0
else
can_shoot = 1

if (race=11 && ultra_got[42]==1)//HUNTER ULTRA B Homing projectiles
{
    with projectile
    {
    if !instance_exists(Player)
    {exit;}
        if (team==2)
        {
        if object_index!=Laser&&object_index!=MegaLaser
        {
        if instance_exists(enemy)
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

if (race=11 && ultra_got[43]==1)//HUNTER ULTRA C Focused projectiles
{
    if instance_exists(Marker)
    {
    with projectile
{
if !instance_exists(Player)
    {exit;}
if !instance_exists(Marker)
    {exit;}
if object_index=Laser||object_index=MegaLaser{exit;}
if x > view_xview and x < view_xview+view_wview and y > view_yview and y < view_yview+view_hview  and object_index != EnemyLaser
{if place_free(x+lengthdir_x(1.5,point_direction(x,y,Marker.x,Marker.y)),y)
x += lengthdir_x(1.5,point_direction(x,y,Marker.x,Marker.y))
if place_free(x,y+lengthdir_y(1.5,point_direction(x,y,Marker.x,Marker.y)))
y += lengthdir_y(1.5,point_direction(x,y,Marker.x,Marker.y))}
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

/* */
///tough shell
if (Player.skill_got[31])
{
if ( lsthealth > my_health && hardshell == true )
{

if (( lsthealth-my_health > 2 ) && ( lsthealth-2 != 0 )  )
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
if Player.skill_got[25]//strong spirit
    {
    
    if strongspiritused=false && my_health==maxhealth
    {
    //strongspiritused=false;
    strongspirit=true;
    }
    
    }

/* */
if !instance_exists(Player){instance_destroy();exit;}
if(my_health<=0)
{

    if Player.skill_got[25]//strong spirit
    {
    if strongspirit==true&&strongspiritused==false
    {
    my_health=1;
    alarm[1]=10;
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
