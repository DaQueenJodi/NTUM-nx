if instance_exists(Player){
	if team == 2 && isog && GetPlayerUltramod() == ultramods.lightningKraken
	{
		snd_play_fire(choose(sndWater1,sndWater2) );
		with instance_create(x,y,Tentacle)
		{image_angle = other.image_angle;
			if instance_exists(Implosion)
			{
				creator = Implosion.id;
			}
			else if instance_exists(ElectroBall)
			{
				creator = instance_nearest(x,y,ElectroBall);	
			}
			else {
				creator = Player.id;	
			}
		team = other.team
		ammo = other.ammo
		isog = false;
		alarm[0] = 1;
		visible = 0
		with instance_create(x,y,LightningSpawn)
		{
		sprite_index=sprTentacleSpawn
		image_angle = other.image_angle
		}
		repeat(3){
		    with instance_create(x,y,FishBoost)
		    {
		    motion_add(image_angle+random(60)-30,2+random(4) );
		    }}

		}
		
		instance_destroy(id,false);
		exit;
	}
	isog = false;
	
if Player.ultra_got[43]&&instance_exists(Marker)//hunter focused fire
{accuracy-=2;}
if Player.ultra_got[42]//hunter never miss
{accuracy-=4;}
var modBoost = 1;
if Mod1=13
accuracy-=modBoost;
if Mod2=13
accuracy-=modBoost;
if Mod3=13
accuracy-=modBoost;
if Mod4=13
accuracy-=modBoost;

if accuracy<0
accuracy=0;

if team!=Player.team
{target=Player;
if Player.ultra_got[43]//hunter focused fire
{
if instance_exists(Marker)
target=Marker;
}
sprite_index=sprLightningEnemy;
image_speed=0.4;}
else{target=enemy;}}
else{instance_destroy();exit;}
if instance_exists(target)
dir = instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),target)
var oldx, oldy;
oldx = x
oldy = y
direction = image_angle+(random(accuracy)-(accuracy*0.5))//30-15   24-12
speed = 4
if instance_exists(target)
{
if point_distance(x,y,dir.x,dir.y) < 120
motion_add(point_direction(x,y,dir.x,dir.y),1)
}
image_angle = direction
speed = 0

move_contact_solid(direction,8+random(4))
speed = 0
image_xscale = -point_distance(x,y,oldx,oldy)/2

ammo -= 1

if !place_free(x,y)
{
x = xprevious
y = yprevious
direction += 180}

if ammo > 0
{
image_index += 0.4/ammo
with instance_create(x,y,Lightning)
{
	isog = other.isog;
accuracy=other.accuracy;
direction = other.direction
image_angle = direction
ammo = other.ammo
team = other.team
image_index = other.image_index
event_perform(ev_alarm,0)
}
}
else
{
instance_create(x+lengthdir_x(image_xscale/2,image_angle),y+lengthdir_y(image_xscale/2,image_angle),LightningHit)
}

