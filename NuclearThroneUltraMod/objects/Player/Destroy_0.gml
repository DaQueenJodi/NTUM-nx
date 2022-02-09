//UNLOCK EASY MODE
if area=1 && subarea=1 && loops=0 && my_health<1
scrUnlockGameMode(9,"FOR PLAYING LIKE SHIT")

if scrCheckLoopAll()
scrUnlockCSkin(1,"FOR LOOPING WITH EVERY CHARACTER",0);

if skill_got[18]//Last wish
{
with UberCont
lastwishused=true;
}

with Crown
instance_destroy();

with CrystalShield
instance_destroy();

with MusCont
{
if audio_exists(song)
audio_stop_sound(song);
//optimise sound_discard(song)
//optimise sound_discard(amb)
//optimise snd_loop(amb)
}

if ultra_got[40]==1
{
//REBEL DEFENCE PASSIVE
ang = random(360)
{
repeat(28)
{
with instance_create(x,y,AllyBullet)
{
motion_add(other.ang,4)
image_angle = direction
team = other.team
}
ang += 360/28
}
}
}

if bskin=2 && race = 12
{
with instance_create(x,y,YungCuzCap)
{
motion_add(random(360),2+random(8) );
}

}

if race = 18
{

repeat(10+irandom(5) )
    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
    motion_add(random(360),5+random(10) );}

}

if race=11
{
instance_create(x,y,Explosion);
}

var playerCorpse = instance_create(x,y,Corpse)
with playerCorpse
{
size = 1
mask_index = other.mask_index
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
sprite_index = other.spr_dead
image_xscale = other.right
if speed > 16
speed = 16
if other.race = 4
{
p = other.p
with instance_create(x,y,MeltDead)
{
p= other.p
creator = other.id
}
}
}

audio_stop_sound(sndEyesLoop)
audio_stop_sound(sndEyesLoopUpg)
audio_stop_sound(sndChickenLoop)
audio_stop_sound(sndChickenHeadlessLoop)

//CROWN OF DEATH
if crown = 3
{with enemy
{if x > __view_get( e__VW.XView, 0 ) and y > __view_get( e__VW.YView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
my_health = 0}}

//SAVE STUFF

BackCont.kills = kills
BackCont.area = area
BackCont.subarea = subarea
BackCont.hard = hard
BackCont.loops = loops

with UberCont
{
ctot_kill[other.race]+=other.kills
//ctot_time[other.race]+=time;
if other.my_health<1
ctot_dead[other.race] += 1

ctot_loop[other.race]+=other.loops;

//best kills
if other.kills > cbst_kill[other.race]
cbst_kill[other.race] = other.kills

//best difficulty
if other.hard>cbst_diff[other.race]
cbst_diff[other.race]=other.hard

//best loops
if other.loops> cbst_loop[other.race]
cbst_loop[other.race]=other.loops

if other.randomlySelected
{
	ctot_kill[0]+=other.kills
	//ctot_time[other.race]+=time;
	if other.my_health<1
	ctot_dead[0] += 1

	ctot_loop[0]+=other.loops;

	//best kills
	if other.kills > cbst_kill[0]
		cbst_kill[0] = other.kills

	//best difficulty
	if other.hard>cbst_diff[0]
		cbst_diff[0]=other.hard

	//best loops
	if other.loops> cbst_loop[0]
		cbst_loop[0]=other.loops
}

scrSave();
}




//Lets unlock some shit
if my_health<=0
scrUnlockCharacter(4,"FOR DYING");//MELTING

if race = 4 && area = 6//SKELETON
scrUnlockCharacter(19,"FOR DIEING IN THE LABS AS MELTING");

if UberCont.ctot_kill[race]>=100//UNLOCK PLANT
scrUnlockCharacter(5,"FOR GETTING OVER 100 KILLS");

if kills>=2000 && race = 5
scrUnlockCSkin(5,"FOR GETTING 2.000 KILLS#IN ONE RUN AS PLANT",0);



snd_play(snd_dead)

with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = other.wep
ammo = 50
curse = other.curse
name = wep_name[wep]
type = wep_type[wep]
sprite_index = wep_sprt[wep]
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
motion_add(random(360),2)
speed *= 0.8
}

if bwep > 0
{
with instance_create(x,y,WepPickup)
{
scrWeapons()
wep = other.bwep
ammo = 50
curse = other.bcurse
name = wep_name[wep]
type = wep_type[wep]
sprite_index = wep_sprt[wep]
motion_add(other.direction,other.speed)
speed += max(0,-other.my_health/5)
motion_add(random(360),2)
speed *= 0.8
}
}

if race=15
{
Sleep(20)
repeat(20)
instance_create(x+random(50)-25,y+random(50)-25,IonImpact)
}

if UberCont.opt_gamemode=4
instance_create(x,y,BigDogExplo);



if skeletonlives>0
{
instance_create(x,y,ExplosionNonLethal);

//blank armour sorta yea
with enemy{
if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
{
//if sprite_index!=spr_hurt{
snd_play(other.snd_hurt, other.hurt_pitch_variation)
Sleep(20)
draw_rectangle_colour(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_white,c_white,c_white,c_white,false);
Sleep(20);

//move it
if place_free(x+lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180),y)
x += lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180)
if place_free(x,y+lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180))
y += lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180)

my_health -= 24;
sprite_index = spr_hurt
image_index = 0
//motion_add(other.direction,6)

//with instance_create(x,y,SharpTeeth)
//owner=other.id;
//}

motion_add(other.direction+180,10);
}}
with projectile
{
if team!=other.team
instance_destroy();
}
}
else
{
	//Horror and atom bskin drop rads
	if race == 21 || (race == 15 && bskin = 1)
	{
		raddrop = rad;
		scrRaddrop();
	}
}
with KeyCont {
	key_fire[0] = 0;
	key_spec[0] = 0;
}