if isog && GetPlayerUltramod() == ultramods.lightningKraken
{
	snd_play(choose(sndSpark1,sndSpark2),0.1,true)
	if ultra
	{
		with instance_create(x,y,UltraLightning)
		{image_angle =other.image_angle
			scrCopyWeaponMod(other);
		team = other.team
		ammo = other.ammo
		isog = false;
		alarm[0] = 1;
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}
	}
	else
	{
		with instance_create(x,y,Lightning)
		{image_angle =other.image_angle
			scrCopyWeaponMod(other);
		team = other.team
		ammo = other.ammo
		isog = false;
		alarm[0] = 1;
		visible = 0
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}
	}
	instance_destroy(id,false);
	exit;
}
isog = false;

if instance_exists(target)
dir = instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),target)
var oldx, oldy;
oldx = x
oldy = y

if instance_exists(Player){
if Player.skill_got[19] == 1
{accuracy-=3;}
if Player.ultra_got[43]&&instance_exists(Marker)//hunter focused fire
{accuracy-=5;}
if Player.ultra_got[42]//hunter never miss
{accuracy-=6;}
var modBoost = 1;
if Mod1=13
accuracy-=modBoost;
if Mod2=13
accuracy-=modBoost;
if Mod3=13
accuracy-=modBoost;
if Mod4=13
accuracy-=modBoost;
}
if accuracy<0
accuracy=0;

direction = image_angle+(random(accuracy)-(accuracy*0.5))//30 - 15
speed = 4
if instance_exists(target)
{
if point_distance(x,y,dir.x,dir.y) < 170-accuracy//120
motion_add(point_direction(x,y,dir.x,dir.y),1.6-(accuracy*0.05))//1
}
image_angle = direction
speed = 0

move_contact_solid(direction,8+random(4))
speed = 0
image_xscale = -point_distance(x,y,oldx,oldy)/4

ammo -= 1

if !place_free(x,y)
{
x = xprevious
y = yprevious
direction += 180}

if ammo > 0
{
image_index += 0.4/ammo
with instance_create(x,y,Tentacle)
{
	scrCopyWeaponMod(other);
	isog = other.isog;
sprite_index=other.sprite_index;
ion=other.ion;
accuracy=other.accuracy;
creator=other.creator;
dmg=other.dmg;
direction = other.direction
image_angle = direction
ammo = other.ammo
team = other.team
image_index = other.image_index
if ammo=20
alarm[0]=1;
else if ammo=40
alarm[0]=1;
else event_perform(ev_alarm,0);

}
}
else
{

with instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),LightningHit)
sprite_index=sprTentacleHit;

with instance_create(x,y,FishBoost)
motion_add(other.direction+random(6)-3,1+random(2) );

}

