image_speed = 0.4
dmg = 5;
myExplosionMask = -1;
if UberCont.ultramodSwap
{
	var um = GetPlayerUltramod()
	if um == ultramods.bloodExplosionExplosion
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
	else
	{
		//seperate mask for players
		if object_index!=ExplosionNonLethal
		{
		myExplosionMask = instance_create(x,y,ExplosionMask);
		with myExplosionMask {
			owner = other.id;
		}
		with instance_create(x,y,Smoke)
		motion_add(random(360),1+random(2))

		ang = random(360)
		var angstep = 360/4
		repeat(4)
		{
		with instance_create(x,y,Dust)
		motion_add(other.ang,6)
		ang += angstep;
		}
		BackCont.shake += 7
	}
}
team = -1
if instance_exists(Player){
if Player.ultra_got[57]//atom bomb
{
instance_create(x+random(32)-16,y+random(32)-16,ExplosionStop);}
if Player.crown == 3//Crown of death
{
	repeat(2)
	{
		var dir = random(360);
		var dis = 24 + random(16);
		instance_create(x+lengthdir_x(dis,dir),y+lengthdir_y(dis,dir),SmallExplosion);
	}
}
}

alarm[0]=3;
if instance_exists(Player)
{

if Player.ultra_got[57]
{
//FIERY EXPLOSIONS
alarm[1]=9;
}

}

Humphry=false;//gets assigned true when playing as humphry and firing
HumphryNr=0;
HumphryHit=0;



