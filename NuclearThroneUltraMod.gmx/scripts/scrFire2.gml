switch(wep)
{//here we go again!

//KRAKEN GUN
case 194:

snd_play(sndRoll);
snd_play(sndBloodLauncher);

snd_play(choose(sndWater1,sndWater2) );


with instance_create(x,y,Tentacle)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(30)-15)*other.accuracy
creator=other.id;
team = other.team
ammo = 14
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
{
sprite_index=sprTentacleSpawn
image_angle = other.image_angle
}

repeat(6){
    with instance_create(x,y,FishBoost)
    {
    motion_add( point_direction(x,y,mouse_x,mouse_y)+random(60)-30,2+random(4) );
    }}

}

BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 5
wkick = 5

break;


//BIG KRAKEN GUN
case 195:

snd_play(sndRoll);
snd_play(sndBloodLauncher);
snd_play(choose(sndWater1,sndWater2) );
repeat(3){
with instance_create(x,y,Tentacle)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(40)-20)*other.accuracy
creator=other.id;
dmg=6//+irandom(4);
team = other.team
ammo = 16
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
{
sprite_index=sprTentacleSpawn
image_angle = other.image_angle
}

}}

repeat(8){
    with instance_create(x,y,FishBoost)
    {
    motion_add( point_direction(x,y,mouse_x,mouse_y)+random(60)-30,2+random(4) );
    }}

BackCont.viewx2 += lengthdir_x(11,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(11,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
wkick = 7

break;


//KRAKEN CANNON
case 196:

snd_play(sndRoll);
snd_play(sndBloodLauncher);
snd_play(choose(sndWater1,sndWater2) );

repeat(6){
with instance_create(x,y,Tentacle)
{
creator=other.id;
dmg=10+irandom(4);
image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(50)-25)*other.accuracy
team = other.team
ammo = 24
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
{
sprite_index=sprTentacleSpawn
image_angle = other.image_angle
}

}}

repeat(12){
    with instance_create(x,y,FishBoost)
    {
    motion_add( point_direction(x,y,mouse_x,mouse_y)+random(60)-30,2+random(4) );
    }}

BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 10
wkick = 10

break;


//DOUBLE SUPER PLASMA CANNON
case 197:

Sleep(30);

snd_play(sndSuperPlasmaCannon)

with instance_create(x,y,PlasmaHuge)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)+16*other.accuracy,2)
image_angle = direction
team = other.team}

with instance_create(x,y,PlasmaHuge)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)-16*other.accuracy,2)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,12)
BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 30
wkick = 20
resetSpeed=false;

break;


//MORPH HAMMER
case 198:

if Player.skill_got[17] = 1
snd_play(sndLaserSwordUpg)
else
snd_play(sndLaserSword)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),MorphSlash)
{
if Player.skill_got[17] = 1//laserbrain
dmg=8
else
dmg = 6//rench4//sledge16
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team
snd_hit=sndSledgeHit;}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 1
wkick = -4

break;


//ULTRA SEEKER PISTOL
case 199:

snd_play(sndSeekerShotgun)

with instance_create(x,y,UltraSeekerBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)-10*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,UltraSeekerBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)+10*other.accuracy,2+random(3))
image_angle = direction
team = other.team}

with instance_create(x,y,UltraSeekerBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-20)-20*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,UltraSeekerBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-20)+20*other.accuracy,2+random(3))
image_angle = direction
team = other.team}


BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick -= 6


break;


//PANDA STICK
case 200:

snd_play(sndHammer)

instance_create(x,y,Dust)

ang = point_direction(x,y,mouse_x,mouse_y)
move_contact_solid(ang,3)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,ang),y+lengthdir_y(Player.skill_got[13]*20,ang),Slash)
{
ang = other.ang
dmg = 2
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(ang,2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
speed = -speed/2
BackCont.viewx2 += lengthdir_x(6,ang)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,ang)*UberCont.opt_shake
BackCont.shake += 1
wkick = -5

break;


//SUPERHOT REVOLVER
case 201:

snd_play(sndHeavyRevolver)

with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,HeavyBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
wkick = 6

break;


//SUPERHOT ASSAULT RIFLE
case 202:

with instance_create(x,y,HeavyBurst)
{
creator = other.id
ammo = 3
time = 4
team = other.team
event_perform(ev_alarm,0) 
}

break;


//FLAME WAVE GUN
case 203:

with instance_create(x,y,FlameWaveBurst)
{
creator = other.id
ammo = 7
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

break;


//SPLINTER SEEKER CROSSBOW
case 204:

snd_play(sndBigSplinter)

with instance_create(x,y,SeekerBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)-20*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,SeekerBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)+20*other.accuracy,2+random(3))
image_angle = direction
team = other.team}

with instance_create(x,y,Bolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),25)
image_angle = direction
team = other.team}

repeat(2)
{
with instance_create(x,y,Splinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
with instance_create(x,y,Splinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 6

break;


//PLASMA SHOTGUN
case 205:

if Player.skill_got[17] = 1
snd_play(sndPlasmaUpg)
else
snd_play(sndPlasma)


repeat(3)
{
with instance_create(x+lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)),PlasmaBall)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(60)-30)*other.accuracy,0.4+random(3))//40-20
image_angle = direction
team = other.team
}
}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,2)
BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 6
resetSpeed=false;

break;


//SMALL MISSILE LAUNCHER
case 206:

snd_play(sndRocket)


with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)-10*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)+10*other.accuracy,2+random(3))
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,2)
BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 4

break;

//MISSILE LAUNCHER
case 207:

snd_play(sndRocket)


with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)-15*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)+15*other.accuracy,2+random(3))
image_angle = direction
team = other.team}

with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)-30*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)+30*other.accuracy,2+random(3))
image_angle = direction
team = other.team}

with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)-45*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
with instance_create(x,y,Missile)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)+45*other.accuracy,2+random(3))
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,4)
BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 11
wkick = 9

break;


//MINI PLASMA SHOTGUN
case 208:

snd_play(sndPlasma)

repeat(7)
{
with instance_create(x+lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)),MiniPlasmaBall)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(60)-30)*other.accuracy,1+random(6))image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 8
wkick = 6

break;


//MINI PLASMA MINIGUN
case 209:

if Player.skill_got[17] = 1
snd_play(sndPlasmaUpg)
else
snd_play(sndPlasma)

with instance_create(x+lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)),MiniPlasmaBall)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(26)-13)*other.accuracy,2)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1)
BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
wkick = 4
resetSpeed=false;

break;


//BIG MISSILE LAUNCHER
case 210:

with instance_create(x,y,MissileBurst)
{
creator = other.id
ammo = 3
time = 7
team = other.team
event_perform(ev_alarm,0) 
}

break;


//MINI PLASMA RIFLE
case 211:

if Player.skill_got[17] = 1
snd_play(sndPlasmaUpg)
else
snd_play(sndPlasma)

with instance_create(x+lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)),MiniPlasmaBall)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,2)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
wkick = 4
resetSpeed=false;

break;


//SUPER ION CANNON
case 212:

if Player.skill_got[17] = 1
snd_play(sndLaserUpg)
else
snd_play(sndLaser)
with instance_create(x,y,SuperIonBurst)
{
creator = other.id
ammo = 40
time = 1
team = other.team
alarm[0] = 20
}

BackCont.shake += 12
wkick = 4

break;


//SUPER NUKE LAUNCHER
case 213:

with instance_create(x,y,NukeBurst)
{
creator = other.id
ammo = 3
time = 10
team = other.team
event_perform(ev_alarm,0);


}

break;


//VIKING GREAT AXE
case 214:

snd_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),BigSlash)
{
sprite_index=sprAxeSlash;
dmg = 25//shovel is 8 sledge = 16
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team
snd_hit=sndSledgeHit;}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 3
wkick = -5

break;


//VIKING AXE
case 215:

snd_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),Slash)
{
dmg = 6//shovel is 8
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 1
wkick = -4

break;


//GRENADE SHOTGUN
case 216:

snd_play(sndGrenade)

repeat(4)
{
with instance_create(x,y,SmallGrenade)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(40)-20)*other.accuracy,9+random(3))//speed=10
image_angle = direction
team = other.team
alarm[0] = 14//shorter fuse original 40 regular naddes 60
}
}

BackCont.viewx2 += lengthdir_x(13,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(13,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 11
wkick = 7

break;


//AUTO GRENADE SHOTGUN
case 217:

snd_play(sndGrenade)

repeat(3)
{
with instance_create(x,y,SmallGrenade)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(40)-20)*other.accuracy,9+random(3))//speed=10
image_angle = direction
team = other.team
alarm[0] = 14//shorter fuse original 40 regular naddes 60
}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 10
wkick = 7

break;


//GRENADE RIFLE
case 218:

with instance_create(x,y,SmallGrenadeBurst)
{
creator = other.id
ammo = 3
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

break;


//GRENADE HYPER RIFLE
case 219:

with instance_create(x,y,SmallGrenadeBurst)
{
creator = other.id
ammo = 9
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

break;

//GHETTO BLASTER
case 220:

snd_play(sndGhettoBlast)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),GhettoBlast)
{
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,6+random(4))

dmg = 12//4 wrench

if instance_exists(Player)
{
if Player.skill_got[17] = 1//laserbrain
dmg = 18//4 wrench
}

longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),-6)
BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 16
wkick = -8

break;


//DOOM LAUNCHER
case 221:

snd_play(sndGrenade)

with instance_create(x,y,DoomNadeCluster)
{
sticky = 0
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(6)-3)*other.accuracy,10)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
wkick = 5

break;


//LASER SWORD
case 222:


if Player.skill_got[17] = 1
snd_play(sndLaserSwordUpg)
else
snd_play(sndLaserSword)
instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),EnergySlash)
{
dmg=10;
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}


if Player.skill_got[17] = 1
snd_play(sndLaserUpg)
else
snd_play(sndLaser)
with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(2)-1)*other.accuracy
team = other.team
bounce=true;
event_perform(ev_alarm,0)
}



wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 3
wkick = -5

break;


//BULLET SWORD
case 223:

snd_play(choose(sndSword1,sndSword2))

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),Slash)
{
dmg = 6
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}


with instance_create(x,y,Burst)
{
creator = other.id
ammo = 4
time = 2
team = other.team
event_perform(ev_alarm,0) 
}


wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(14,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(14,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 3
wkick = -5

break;


//GOLDEN CAR THROWER
case 224:

snd_play(sndSnowBotThrow);
with instance_create(x,y,CarThrow)
{
maxhealth = 30;//20 original
spr_idle = sprGoldenCarIdle
spr_hurt = sprGoldenCarHurt
//spr_dead = sprScorchmark
team = other.team
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,16)
}

BackCont.viewx2 += lengthdir_x(-8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(-8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 14
wkick = -8

break;


//GOLDEN PLASMA GUN
case 225:

if Player.skill_got[17] = 1
snd_play(sndPlasmaUpg)
else
snd_play(sndPlasma)

with instance_create(x+lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)),PlasmaBall)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,3)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1.5)
BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick = 5
resetSpeed=false;

break;


//GOLDEN SLUGGER
case 226:

snd_play(sndSlugger)

with instance_create(x,y,Slug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,17)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 12
wkick = 8

break;


//GOLDEN ASSAULT RIFLE
case 227:

BackCont.shake += 2
BackCont.viewx2 += lengthdir_x(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(2,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
with instance_create(x,y,Burst)
{
creator = other.id
ammo = 3
time = 2
team = other.team
event_perform(ev_alarm,0) 
}

break;


//GOLDEN SPLINTER GUN
case 228:

snd_play(sndSplinterGun)
repeat(2){
with instance_create(x,y,Splinter)//5 splinters
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}}
repeat(2)
{
with instance_create(x,y,Splinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
with instance_create(x,y,Splinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick -= 4

break;


//GOLDEN BAZOOKA
case 229:

snd_play(sndRocket)

with instance_create(x,y,Rocket)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)*other.accuracy,2)
image_angle = direction
team = other.team
sprite_index=sprGoldenRocket;}

BackCont.viewx2 += lengthdir_x(31,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(31,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 5
wkick = 11

break;


//GOLDEN SCREWDRIVER
case 230:

snd_play(sndScrewdriver)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*10,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*10,point_direction(x,y,mouse_x,mouse_y)),Shank)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,3+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),2)
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 1
wkick = -9

break;


//GUITAR
case 231:

snd_play(sndGuitar)

instance_create(x,y,Dust)

ang = point_direction(x,y,mouse_x,mouse_y)
move_contact_solid(ang,3)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,ang),y+lengthdir_y(Player.skill_got[13]*20,ang),Slash)
{
snd_wallhit=sndGuitarHitWall;
snd_hit=sndGuitarHit;
ang = other.ang
dmg = 26
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(ang,2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
speed = -speed/2
BackCont.viewx2 += lengthdir_x(12,ang)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,ang)*UberCont.opt_shake
BackCont.shake += 2
wkick = -8

break;


//HEAVY CROSSBOW
case 232:

snd_play(sndHeavyCrossbow)

with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),18)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(45,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(45,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 8
wkick = 6

break;

//BLADE GUN
case 233:

snd_play(sndDiscgun)

with instance_create(x,y,Blade)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,10)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 4

break;

//HEAVY AUTO CROSSBOW
case 234:

snd_play(sndHeavyCrossbow)

with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+random(18)-9,18)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
wkick = 6

break;

//SUPER HEAVY CROSSBOW
case 235:

snd_play(sndHeavyCrossbow)

with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+5*other.accuracy,18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-5*other.accuracy,18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+10*other.accuracy,18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-10*other.accuracy,18)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,8)

BackCont.viewx2 += lengthdir_x(80,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(80,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 16
wkick = 10

break;


//SUPER HEAVY AUTO CROSSBOW
case 236:

snd_play(sndCrossbow)

with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+6*other.accuracy,18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-6*other.accuracy,18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+12*other.accuracy,18)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-12*other.accuracy,18)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1)

BackCont.viewx2 += lengthdir_x(70,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(70,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 14
wkick = 9

break;


//SPIRAL SLASH DIRECTOR SHOTGUN
case 237:

with instance_create(x,y,SlashDirectorShotgunPrep)
{
snd_play(sndSlugger)
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(6)-3)*other.accuracy,10+random(2));
image_angle=direction;
rate=10//for extra speed more bullets per step
Direction=point_direction(x,y,mouse_x,mouse_y);
creator = other.id
ammo = 30
totalammo = ammo;
time = 1
team = other.team
//event_perform(ev_alarm,0) 
}

BackCont.viewx2 += lengthdir_x(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 12
wkick = 10

break;

//SPLIT BLADE GUN
case 238:

snd_play(sndDiscgun)

with instance_create(x,y,SplitBlade)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,10)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(11,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(11,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
wkick = 5

break;



//ROCKET GLOVE
case 239:

snd_play(sndRocket);
snd_loop(sndFlamerLoop);
with instance_create(x,y,RocketGloveBurst)
{
creator = other.id
ammo = 23//equal to reload time?
time = 1
team = other.team
event_perform(ev_alarm,0) 
}


instance_create(x,y,Dust)
repeat(4)
instance_create(x,y,Smoke);
with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),RocketSlash)
{
image_speed=0;
dmg = 14
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 12

break;


//SWARM GUN
case 240:

with instance_create(x,y,SwarmBurst)
{
creator = other.id
ammo = 6
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

break;

//INFINITY SLUGGER
case 241:

snd_play(sndSlugger)

with instance_create(x,y,Slug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 12
wkick = 9

break;


//INFINITY LASER PISTOL
case 242:


if Player.skill_got[17] = 1
snd_play(sndLaserUpg)
else
snd_play(sndLaser)
with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)//+(random(2)-1)*other.accuracy
team = other.team
bounce=true;
event_perform(ev_alarm,0)
}

BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick = 3

break;


//SWARM SHOTGUN
case 243:

snd_play(sndSwarm);

repeat(6){
with instance_create(x,y,SwarmBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)-15*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
}

repeat(6){
with instance_create(x,y,SwarmBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
}

repeat(6){
with instance_create(x,y,SwarmBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)+15*other.accuracy,2+random(3))
image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 6

break;


//ULTRA MEGA LASERPISTOL
case 244:


snd_play(sndLaserUpg)
snd_play(sndThunder);

with instance_create(x,y,MegaLaser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(2)-1)*other.accuracy
team = other.team
image_yscale+=0.2;
bounce=true;
event_perform(ev_alarm,0)
}
with instance_create(x,y,MegaLaser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(2)-1)+7*other.accuracy
team = other.team
image_yscale+=0.2;
bounce=true;
event_perform(ev_alarm,0)
}
with instance_create(x,y,MegaLaser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(2)-1)+14*other.accuracy
team = other.team
image_yscale+=0.2;
bounce=true;
event_perform(ev_alarm,0)
}
with instance_create(x,y,MegaLaser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(2)-1)-7*other.accuracy
team = other.team
image_yscale+=0.2;
bounce=true;
event_perform(ev_alarm,0)
}
with instance_create(x,y,MegaLaser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(2)-1)-14*other.accuracy
team = other.team
image_yscale+=0.2;
bounce=true;
event_perform(ev_alarm,0)
}

BackCont.viewx2 += lengthdir_x(25,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(25,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 18
wkick = 12

break;

//LIGHTNING MINIGUN
case 245:

if Player.skill_got[17] = 1
snd_play(choose(sndLightning2,sndLightning3))
else
snd_play(sndLightning1)


with instance_create(x,y,Lightning)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(6)-3)*other.accuracy
team = other.team
ammo = 26
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
image_angle = other.image_angle}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 8
wkick = 8

break;

//SUPER SPLIT BLADE GUN
case 246:

snd_play(sndDiscgun)

with instance_create(x,y,SuperSplitBlade)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,10)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(14,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(14,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 12
wkick = 7

break;

//BOMB LAUNCHER
case 247:

snd_play(sndGrenade)

with instance_create(x,y,SplitGrenade)
{
sticky = 1
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(6)-3)*other.accuracy,10)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 6

break;

//ULTRA POPGUN
case 248:

snd_play(sndMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,Bullet5)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(16)-8)*other.accuracy,14+random(2))
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 4

break;

//HEAVY SLUGGER
case 249:

snd_play(sndHeavySlugger)

with instance_create(x,y,HeavySlug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,12)//16
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 18
wkick = 10

break;


//AUTO EXPLOSIVE BOW
case 250:

snd_play(sndCrossbow)

with instance_create(x,y,ExplosiveBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(16)-8)*other.accuracy,22)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(36,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(36,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 4

break;


//YOYO GUN
case 251:

snd_play(sndDiscgun)

with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,6)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 5

break;

//SUPER YOYO GUN
case 252:

snd_play(sndDiscgun)


with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5),6)
image_angle = direction
team = other.team}
with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+10+(random(10)-5)*other.accuracy,6)
image_angle = direction
team = other.team}
with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-10+(random(10)-5)*other.accuracy,6)
image_angle = direction
team = other.team}
with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+20+(random(10)-5)*other.accuracy,6)
image_angle = direction
team = other.team}
with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-20+(random(10)-5)*other.accuracy,6)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1)



BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 10
wkick = 8

break;

//SHANK GUN
case 253:

snd_play(sndCrossbow)

with instance_create(x,y,ShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(5,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 2

break;

//SUPER SHANK GUN
case 254:

snd_play(sndCrossbow)

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,16)

with instance_create(x,y,ShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,ShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+10*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,ShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+20*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,ShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-10*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,ShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-20*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(50,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(50,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 14
wkick = 8

break;

//ENERGY SHANK GUN
case 255:

if Player.skill_got[17] = 1
snd_play(sndPlasmaBigUpg)
else
snd_play(sndPlasmaBig)

with instance_create(x,y,EnergyShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 4

break;


//SUPER SHANK GUN
case 256:

snd_play(sndLightningPlasma2)

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,16)

with instance_create(x,y,EnergyShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,EnergyShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+10*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,EnergyShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+20*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,EnergyShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-10*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}
with instance_create(x,y,EnergyShankBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-20*other.accuracy+(random(4)-2)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(55,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(55,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 16
wkick = 10

break;

//LIGHTNING CROSSBOW
case 257:

snd_play(sndCrossbow)

with instance_create(x,y,LightningBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 4

break;

//SHOTGUN RIFLE
case 258:

if wep_type[258]==2
{
snd_play(sndShotgun)

repeat(8)
{
with instance_create(x,y,Bullet2)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(40)-20)*other.accuracy,12+random(6))
image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 9
wkick = 6

wep_type[258]=1;
wep_sprt[258] = sprShotgunRifle2
wep_cost[258] = 5;
}
else
{
with instance_create(x,y,Burst)
{
creator = other.id
ammo = 5
time = 2
team = other.team
event_perform(ev_alarm,0) 
}
wep_type[258]=2;
wep_sprt[258] = sprShotgunRifle1
wep_cost[258] = 1;
}

break;

//BULLET POPPER
case 259:


if wep_sprt[259] == sprBulletPopper1
{
with instance_create(x,y,Burst2)
{
creator = other.id
ammo = 2
time = 2
team = other.team
event_perform(ev_alarm,0) 
}
wep_sprt[259] = sprBulletPopper2;
}
else
{
snd_play(sndMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,Bullet1)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick = 2
wep_sprt[259] = sprBulletPopper1;
}

break;

//HYPER HEAVY SLUGGER
case 260:

snd_play(sndSlugger)

with instance_create(x,y,HyperHeavySlug)
{
direction = point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)*other.accuracy
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 8

break;

//HYPER SNIPER
case 261:

snd_play(sndHeavyRevolver)

with instance_create(x,y,HyperSniper)
{
direction = point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)*other.accuracy
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 8

break;

//SPIRAL YOYO GUN
case 262:

snd_play(sndDiscgun)

with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,6)
image_angle = direction
team = other.team}

with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy+60,6)
image_angle = direction
team = other.team}

with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy+120,6)
image_angle = direction
team = other.team}

with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy+180,6)
image_angle = direction
team = other.team}

with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy+240,6)
image_angle = direction
team = other.team}

with instance_create(x,y,Yoyo)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy+300,6)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(11,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(11,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 12
wkick = 6

break;

//ELECTRICGUITAR
case 263:

snd_play(sndGuitar)

instance_create(x,y,Dust)

ang = point_direction(x,y,mouse_x,mouse_y)
move_contact_solid(ang,4)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,ang),y+lengthdir_y(Player.skill_got[13]*20,ang),LightningSlash)
{
snd_wallhit=sndGuitarHitWall;
snd_hit=sndGuitarHit;
ang = other.ang
dmg = 22//26
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(ang,2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
speed = -speed/2
BackCont.viewx2 += lengthdir_x(12,ang)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,ang)*UberCont.opt_shake
BackCont.shake += 2
wkick = -8

break;

//BROKEN STER GUN
case 264:

snd_play(sndRocket)

with instance_create(x,y,SterNuke)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)+10*other.accuracy,2)
image_angle = direction
team = other.team}

with instance_create(x,y,SterNuke)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)-10*other.accuracy,2)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(60,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(60,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 40
wkick = 20

break;

//HEAVY MINIGUN
case 265:

snd_play(sndMinigun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(80)-40,3+random(2))

with instance_create(x,y,HeavyBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(26)-13)*other.accuracy,16)
image_angle = direction
team = other.team}
motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1)
BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 5
wkick = 6

break;

//HEAVY DOUBLE MINIGUN
case 266:

snd_play(sndMinigun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(80)-40,3+random(2))
repeat(2){
with instance_create(x,y,HeavyBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(32)-16)*other.accuracy,16)
image_angle = direction
team = other.team}
}
motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1.4)
BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 10
wkick = 9

break;

//FAT REVOLVER
case 267:

snd_play(sndHeavyRevolver)


with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

repeat(4)
{
with instance_create(x,y,Smoke)
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(30)-15)*other.accuracy,3+random(3))
}

with instance_create(x,y,FatBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,12)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 5

break;

//FAT MACHINEGUN
case 268:

snd_play(sndHeavyRevolver)


with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

repeat(4)
{
with instance_create(x,y,Smoke)
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(30)-15)*other.accuracy,3+random(3))
}


with instance_create(x,y,FatBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,12)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 5
wkick = 4

break;

//BOUNCER LASER PISTOL
case 269:


if Player.skill_got[17] = 1
snd_play(sndLaserUpg)
else
snd_play(sndLaser)
with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(2)-1)*other.accuracy
team = other.team
event_perform(ev_alarm,0)
laserhit=4;
sprite_index=sprBouncingLaser;}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
wkick = 2

break;


//BOUNCER LASER RIFLE
case 270:

if Player.skill_got[17] = 1
snd_play(sndLaserUpg)
else
snd_play(sndLaser)
with instance_create(x,y,Laser)
{image_angle = point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy
team = other.team
event_perform(ev_alarm,0)
laserhit=6;
sprite_index=sprBouncingLaser;}

BackCont.viewx2 += lengthdir_x(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(3,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 2
wkick = 5

break;

//FAT SMG
case 271:

snd_play(sndHeavyRevolver)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(60)-30,2+random(2))

with instance_create(x,y,FatBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(32)-16)*other.accuracy,12)
image_angle = direction
team = other.team}

repeat(4)
{
with instance_create(x,y,Smoke)
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(30)-15)*other.accuracy,3+random(3))
}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 4

break;

//GHOST BLADE
case 272:

snd_play(choose(sndSword1,sndSword2))

snd_play(sndBloodLauncher)

instance_create(x,y,Smoke)
instance_create(x,y,Dust)

repeat(4+irandom(3))
{
with instance_create(x,y,GhostEffect)
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(30)-15)*other.accuracy,3+random(4))
}

with instance_create(x+lengthdir_x(Player.skill_got[13]*20+26,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20+26,point_direction(x,y,mouse_x,mouse_y)),GhostSlash)
{
dmg = 13
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),7+longarms)
image_angle = direction
team = other.team}

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),GhostSlash)
{
dmg = 13
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 6
wkick = -7

break;

//GYRO BURSTER
case 273:

snd_play(sndGrenade)

snd_play(sndGyroBurst)

with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,GyroBurst)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,4)
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 10
wkick = 4

break;

//INFUSER
case 274:

snd_play(sndCrossbow)

with instance_create(x,y,InfuseBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 4

break;

//SHOVEL
case 275:

snd_play(sndShovel)
snd_play(sndBloodLauncher)

instance_create(x,y,Smoke)
instance_create(x,y,Dust)

repeat(3+irandom(3))
{
with instance_create(x,y,GhostEffect)
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(30)-15)*other.accuracy,3+random(4))
}


with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),GhostSlash)
{
dmg = 15
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}

repeat(3+irandom(3))
{
with instance_create(x,y,GhostEffect)
motion_add(point_direction(x,y,mouse_x,mouse_y)+70+(random(30)-15)*other.accuracy,3+random(4))
}

with instance_create(x+lengthdir_x(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)+60*Player.accuracy),y+lengthdir_y(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)+60*Player.accuracy),GhostSlash)
{
dmg = 15
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)+60*other.accuracy,2+longarms)
image_angle = direction
team = other.team}

repeat(3+irandom(3))
{
with instance_create(x,y,GhostEffect)
motion_add(point_direction(x,y,mouse_x,mouse_y)-70+(random(30)-15)*other.accuracy,3+random(4))
}

with instance_create(x+lengthdir_x(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)-60*Player.accuracy),y+lengthdir_y(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)-60*Player.accuracy),GhostSlash)
{
dmg = 15
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)-60*other.accuracy,2+longarms)
image_angle = direction
team = other.team}

//longer shovelnessness

with instance_create(x+lengthdir_x(Player.skill_got[13]*20+26,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20+26,point_direction(x,y,mouse_x,mouse_y)),GhostSlash)
{
dmg = 15
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),7+longarms)
image_angle = direction
team = other.team}
with instance_create(x+lengthdir_x(Player.skill_got[13]*15+26,point_direction(x,y,mouse_x,mouse_y)+60*Player.accuracy),y+lengthdir_y(Player.skill_got[13]*15+26,point_direction(x,y,mouse_x,mouse_y)+60*Player.accuracy),GhostSlash)
{
dmg = 15
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)+60*other.accuracy,7+longarms)
image_angle = direction
team = other.team}
with instance_create(x+lengthdir_x(Player.skill_got[13]*15+26,point_direction(x,y,mouse_x,mouse_y)-60*Player.accuracy),y+lengthdir_y(Player.skill_got[13]*15+26,point_direction(x,y,mouse_x,mouse_y)-60*Player.accuracy),GhostSlash)
{
dmg = 15
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)-60*other.accuracy,7+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(24,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(24,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 1
wkick = -4

break;

//GOLDEN FLAMETHROWER
case 276:

if !instance_exists(FlameSound)
instance_create(x,y,FlameSound)
with instance_create(x,y,FlameBurst)
{
creator = other.id
ammo = 11
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

break;

//GOLDEN SLEDGEHAMMER
case 277:

snd_play(sndHammer)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),Slash)
{
dmg = 17//sledge is 16
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(12,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 2
wkick = -4

break;


//GOLDEN SHOVEL
case 278:

snd_play(sndShovel)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),Slash)
{
dmg = 10
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y),2+longarms)
image_angle = direction
team = other.team}
with instance_create(x+lengthdir_x(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)+60*Player.accuracy),y+lengthdir_y(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)+60*Player.accuracy),Slash)
{
dmg = 10
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)+60*other.accuracy,2+longarms)
image_angle = direction
team = other.team}
with instance_create(x+lengthdir_x(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)-60*Player.accuracy),y+lengthdir_y(Player.skill_got[13]*15,point_direction(x,y,mouse_x,mouse_y)-60*Player.accuracy),Slash)
{
dmg = 10
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)-60*other.accuracy,2+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),6)
BackCont.viewx2 += lengthdir_x(24,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(24,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 2
wkick = -4

break;

//GOLDEN EXPLOSIVE BOW
case 279:

snd_play(sndCrossbow)

with instance_create(x,y,GoldenExplosiveBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),22)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(40,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 5

break;

//ASSAULT PISTOL
case 280:

with instance_create(x,y,Burst)
{
creator = other.id
ammo = 2
time = 2
team = other.team
event_perform(ev_alarm,0) 
}

break;


//GOLDEN SHORTGUN
case 281:

snd_play(sndShotgun)

repeat(22)
{
with instance_create(x,y,Bullet2)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(80)-40)*other.accuracy,6+random(7))
image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(13,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(13,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 10
wkick = 8

break;

//GOLDEN BULLET SHOTGUN
case 282:

snd_play(sndShotgun)

repeat(8)
{
with instance_create(x,y,Bullet1)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(36)-18)*other.accuracy,12+random(6))
image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(13,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(13,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 9
wkick = 7

break;


//GOLDEN PISTOLE
case 283:

with instance_create(x,y,PistoleBurst)
{
creator = other.id
ammo = 2
time = 3
team = other.team
event_perform(ev_alarm,0) 
}

break;

//GOLDEN POPGUN
case 284:

snd_play(sndPopgun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,Bullet2)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(16)-8)*other.accuracy,16+random(3))
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick = 2

break;

//GOLDEN POP RIFLE
case 285:

with instance_create(x,y,Burst2)
{
creator = other.id
ammo = 3
time = 2
team = other.team
event_perform(ev_alarm,0) 
}

break;

//GOLDEN GLOVE
case 286:

snd_play(sndHammer)

instance_create(x,y,Dust)

ang = point_direction(x,y,mouse_x,mouse_y)
repeat(4)
{
move_contact_solid(ang,44)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,ang),y+lengthdir_y(Player.skill_got[13]*20,ang),Slash)
{
ang = other.ang
dmg = 9
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(ang,2+longarms)
image_angle = direction
team = other.team}
}
motion_add(ang,3);
alarm[3]=4;//imunity
//wepangle = -wepangle
speed = -speed/2
BackCont.viewx2 += lengthdir_x(8,ang)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,ang)*UberCont.opt_shake
BackCont.shake += 5
wkick = -12

break;


//GOLDEN FLARE GUN
case 287:

snd_play(sndFlare)

with instance_create(x,y,Flare)
{
sticky = 0
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(14)-7)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
wkick = 5

break;

//GOLDEN SMG
case 288:

snd_play(sndPistol)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(60)-30,2+random(2))

with instance_create(x,y,Bullet1)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(24)-12)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 2

break;

//ULTRA SLUGGER
case 289:

snd_play(sndSlugger)

with instance_create(x,y,UltraSlug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,16)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 16
wkick = 9

break;

//GOLDEN BOUNCER SMG
case 290:

snd_play(sndBouncerFire)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(60)-30,2+random(2))

with instance_create(x,y,Bullet3)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(34)-17)*other.accuracy,6.4)//5.1
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick = 2

break;

//ENERGY GLOVE
case 291:

if Player.skill_got[17] = 1
snd_play(sndLaserSwordUpg)
else
snd_play(sndLaserSword)

instance_create(x,y,Dust)

ang = point_direction(x,y,mouse_x,mouse_y)
repeat(3)
{
move_contact_solid(ang,44)

instance_create(x,y,Dust)


instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*20,point_direction(x,y,mouse_x,mouse_y)),EnergyHammerSlash)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*2
motion_add(point_direction(x,y,mouse_x,mouse_y),1+longarms)
image_angle = direction
team = other.team}

}
motion_add(ang,3);
alarm[3]=4;//imunity
//wepangle = -wepangle
speed = -speed/2
BackCont.viewx2 += lengthdir_x(8,ang)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,ang)*UberCont.opt_shake
BackCont.shake += 4
wkick = -12

break;

//SEEKER CANON
case 292:

snd_play(sndSeekerPistol)


with instance_create(x,y,SeekerCannonBurst)
{
creator = other.id
ammo = 30
time = 1
team = other.team
event_perform(ev_alarm,0) 
}


BackCont.viewx2 += lengthdir_x(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(15,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick -= 3

break;

//DIRECTOR SUPER SLUGGER
case 293:

snd_play(sndSlugger)

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,3)

with instance_create(x,y,DirectorSlug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,10)
image_angle = direction
team = other.team}
with instance_create(x,y,DirectorSlug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+10*other.accuracy+(random(8)-4)*other.accuracy,10)
image_angle = direction
team = other.team}
with instance_create(x,y,DirectorSlug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+20*other.accuracy+(random(8)-4)*other.accuracy,10)
image_angle = direction
team = other.team}
with instance_create(x,y,DirectorSlug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-10*other.accuracy+(random(8)-4)*other.accuracy,10)
image_angle = direction
team = other.team}
with instance_create(x,y,DirectorSlug)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-20*other.accuracy+(random(8)-4)*other.accuracy,10)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 15
wkick = 8

break;


//CHARGE SHOTGUN
case 294:

with instance_create(x,y,ChargeShotgun)
{
maxcharge=27;//maxrate
type=2;
cost=1;
creator = other.id
//ammo = 9
chargetime = 2
costtime = 14
team = other.team
event_perform(ev_alarm,0)
event_perform(ev_alarm,1) 
}

break;

//CHARGE LASER
case 295:

with instance_create(x,y,ChargeLaser)
{
maxcharge=27;//maxrate
type=5;
cost=1;
creator = other.id
//ammo = 9
chargetime = 1
costtime = 14
team = other.team
event_perform(ev_alarm,0)
event_perform(ev_alarm,1) 
}

break;

//CHARGE FLAKCANNON
case 296:

with instance_create(x,y,ChargeFlakCannon)
{
maxcharge=38;//maxrate
type=2;
cost=1;
creator = other.id
//ammo = 9
chargetime = 1
costtime = 13
team = other.team
event_perform(ev_alarm,0)
event_perform(ev_alarm,1) 
}

break;

//ULTRA FLAK CANNON
case 297:

snd_play(sndGrenade)

with instance_create(x,y,UltraFlakBullet)
{
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,12+random(3))
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(34,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(34,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 8
wkick = 8

break;


///GOLDEN OOPS GUN

//ULTRA WAVE GUN
case 299:

with instance_create(x,y,UltraWaveBurst)
{
creator = other.id
ammo = 7
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

break;

//LASER WAVE GUN
case 300:

with instance_create(x,y,LaserWaveBurst)
{
creator = other.id
ammo = 20
time = 2
team = other.team
event_perform(ev_alarm,0) 
}


BackCont.viewx2 += lengthdir_x(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(4,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick -= 3

break;

//ULTRA GLOVE
case 301:

snd_play(sndHammer)

instance_create(x,y,Dust)
instance_create(x,y,Smoke)

ang = point_direction(x,y,mouse_x,mouse_y)
repeat(3)
{
move_contact_solid(ang,40)

instance_create(x,y,Dust)
instance_create(x,y,Smoke)

with instance_create(x+lengthdir_x(Player.skill_got[13]*20,ang),y+lengthdir_y(Player.skill_got[13]*20,ang),Slash)
{
dmg = 30;
sprite_index=sprUltraSlash;
ang = other.ang
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(ang,2+longarms)
image_angle = direction
team = other.team}
}
motion_add(ang,3);
alarm[3]=4;//imunity
//wepangle = -wepangle
speed = -speed/2
BackCont.viewx2 += lengthdir_x(8,ang)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,ang)*UberCont.opt_shake
BackCont.shake += 8
wkick = -12

break;

//ULTRA SPLINTER GUN
case 302:

snd_play(sndSplinterGun)

with instance_create(x,y,UltraSplinter)//6 splinters
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(6)-3)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
with instance_create(x,y,UltraSplinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
repeat(2)
{
with instance_create(x,y,UltraSplinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(20)-10)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
with instance_create(x,y,UltraSplinter)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,20+random(4))
image_angle = direction
team = other.team}
}

BackCont.viewx2 += lengthdir_x(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(20,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick -= 6

break;


//ULTRA SUPER CROSSBOW
case 303:

snd_play(sndCrossbow)

with instance_create(x,y,UltraBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
image_angle = direction
team = other.team}
with instance_create(x,y,UltraBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+5*other.accuracy,24)
image_angle = direction
team = other.team}
with instance_create(x,y,UltraBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-5*other.accuracy,24)
image_angle = direction
team = other.team}
with instance_create(x,y,UltraBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+10*other.accuracy,24)
image_angle = direction
team = other.team}
with instance_create(x,y,UltraBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-10*other.accuracy,24)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1)

BackCont.viewx2 += lengthdir_x(62,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(62,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 16
wkick = 9

break;

//ULTRA INFUSER
case 304:

snd_play(sndCrossbow)

with instance_create(x,y,UltraInfuseBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(45,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(45,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
wkick = 6

break;

//SNOW BLOWER
case 305:

if !instance_exists(SnowSound)
instance_create(x,y,SnowSound)
with instance_create(x,y,SnowBurst)
{
creator = other.id
ammo = 7
time = 1
team = other.team
event_perform(ev_alarm,0) 
}

break;

//BULLET DISPERSE GUN
case 306:

snd_play(sndHeavyRevolver)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,DisperseBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,10)
image_angle = direction
team = other.team
time=2;
event_perform(ev_alarm,0) 
}

BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 5
wkick = 4

break;


//FROST FLARE GUN
case 307:

snd_play(sndFlare)

with instance_create(x,y,FrostFlare)
{
sticky = 0
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(14)-7)*other.accuracy,9)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 5
wkick = 5

break;

//BULLET DISPERSE MACHINEGUN
case 308:

snd_play(sndHeavyMachinegun)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,DisperseBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,10)
image_angle = direction
team = other.team
time=1;
event_perform(ev_alarm,0) 
}

BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 5
wkick = 4

break;

//POP DISPERSE GUN
case 309:

snd_play(sndShotgun)

with instance_create(x,y,DispersePellet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,10)
image_angle = direction
team = other.team
time=2;
event_perform(ev_alarm,0) 
}

BackCont.viewx2 += lengthdir_x(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 4

break;

//LASER DISPERSE GUN
case 310:

snd_play(sndPlasma)


with instance_create(x,y,DisperseLaser)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,10)
image_angle = direction
team = other.team
time=2;
event_perform(ev_alarm,0) 
}

BackCont.viewx2 += lengthdir_x(9,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(9,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 6
wkick = 5

break;


//POTATO CANNON
case 311:

ammo[1]-=10;
ammo[2]-=1;
ammo[3]-=1;
ammo[4]-=1;

snd_play(sndPartyHorn)
snd_play(sndPotato);
repeat(69){
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,10+random(10))
}

repeat(10)
with instance_create(x,y,Dust)
motion_add(random(360),0.2+random(12))
repeat(10)
with instance_create(x,y,Smoke)
motion_add(random(360),0.2+random(12))


with instance_create(x,y,Potato)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4)*other.accuracy,24)
image_angle = direction
team = other.team}


if random(500)<1
with instance_create(x,y,Sheep)
motion_add(point_direction(x,y,mouse_x,mouse_y)+random(8)-4,16+random(8));

if random(1000)<1
with instance_create(x,y,ExplosiveSheep)
motion_add(point_direction(x,y,mouse_x,mouse_y)+random(8)-4,16+random(8));

if random(9000)<1
instance_create(x,y,ScrapBoss);

if random(9000)<1
instance_create(x,y,LilHunter);

if random(9000)<1
instance_create(x,y,ChesireCat);

if random(9000)<1
instance_create(x,y,BanditBoss);

if random(549)<1
move_contact_solid(direction+180,300);

if random(549)<1
move_contact_solid(direction,300);


move_contact_solid(random(360),random(8));


BackCont.viewx2 += lengthdir_x(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 69
wkick = choose(-24,24);

break;

//ROGUE RIFLE
case 312:

with instance_create(x,y,RogueRifleBurst)
{
creator = other.id
ammo = 2
time = 2
team = other.team
event_perform(ev_alarm,0) 
}

break;

//HYPER INFUSER
case 313:

snd_play(sndHeavyCrossbow)

with instance_create(x,y,HyperInfuseBolt)
{
direction = point_direction(x,y,mouse_x,mouse_y)+(random(4)-2)*other.accuracy
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 7
wkick = 8

break;

//CHARGE SPLINTERGUN
case 314:

with instance_create(x,y,ChargeSplinterGun)
{
maxcharge=27;//maxrate
type=3;
cost=1;
creator = other.id
//ammo = 9
chargetime = 2
costtime = 14
team = other.team
event_perform(ev_alarm,0)
event_perform(ev_alarm,1) 
}

break;

//MONEY GUN
case 315:
snd_play(sndPopgun)
snd_play(sndPartyHorn)
with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(60)-30,2+random(2))

with instance_create(x,y,MoneyBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(40)-20)*other.accuracy,18)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(6,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 3
wkick = 4

break;

//HUNTER HEAVY SNIPER
case 316:

snd_play(sndSniperFire)

with instance_create(x,y,Shell)
motion_add(point_direction(x,y,mouse_x,mouse_y)+other.right*100+random(50)-25,2+random(2))

with instance_create(x,y,HeavyBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+4,24)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-4,24)
image_angle = direction
team = other.team}
with instance_create(x,y,HeavyBullet)
{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(16,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 8
wkick = 4

break;

//AUTO TOXICBOW
case 317:

snd_play(sndCrossbow)

with instance_create(x,y,ToxicBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,24)
image_angle = direction
team = other.team}

BackCont.viewx2 += lengthdir_x(36,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(36,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 4

break;

//SUPER TOXICBOW
case 318:

snd_play(sndCrossbow)

with instance_create(x,y,ToxicBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y),24)
image_angle = direction
team = other.team}
with instance_create(x,y,ToxicBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+5*other.accuracy,24)
image_angle = direction
team = other.team}
with instance_create(x,y,ToxicBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-5*other.accuracy,24)
image_angle = direction
team = other.team}
with instance_create(x,y,ToxicBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+10*other.accuracy,24)
image_angle = direction
team = other.team}
with instance_create(x,y,ToxicBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)-10*other.accuracy,24)
image_angle = direction
team = other.team}

motion_add(point_direction(x,y,mouse_x,mouse_y)+180,1)

BackCont.viewx2 += lengthdir_x(55,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(55,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 12
wkick = 8

break;

//TOXIC ION CANNON
case 319:



snd_play(sndGrenade)

snd_play(sndToxicBarrelGas);

with instance_create(x,y,ToxicIonBurst)
{
creator = other.id
ammo = 20
time = 1
team = other.team
alarm[0] = 25
}

BackCont.shake += 6
wkick = 3

break;


//ROCKET DISPERSE GUN
case 320:

snd_play(sndRocket)

with instance_create(x,y,DisperseRocket)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(12)-6)*other.accuracy,10)
image_angle = direction
team = other.team
time=5;
//event_perform(ev_alarm,0) 
}

BackCont.viewx2 += lengthdir_x(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(30,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 4
wkick = 4

break;

//LIGHTNING SCREWDRIVER
case 321:

snd_play(sndScrewdriver)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x(Player.skill_got[13]*10,point_direction(x,y,mouse_x,mouse_y)),y+lengthdir_y(Player.skill_got[13]*10,point_direction(x,y,mouse_x,mouse_y)),LightningShank)
{
longarms = 0
if instance_exists(Player)
longarms = Player.skill_got[13]*3
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(10)-5)*other.accuracy,3+longarms)
image_angle = direction
team = other.team}

wepangle = -wepangle
motion_add(point_direction(x,y,mouse_x,mouse_y),4)
BackCont.viewx2 += lengthdir_x(14,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(14,point_direction(x,y,mouse_x,mouse_y))*UberCont.opt_shake
BackCont.shake += 2
wkick = -8

break;


}//end of switch part 2!
