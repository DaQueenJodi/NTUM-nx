alarm[1] = 20+random(10)//10 5

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 10+random(10);
}

scrTarget()
if target > 0
{
//PLAYER EXISTS
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and random(5) < 4
{//SEE PLAYER & FLEE
if random(6) < 2
{
motion_add(point_direction(target.x,target.y,x,y)+random(80)-40,0.4)
walk = 40+random(10)
alarm[1] = walk
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if random(6) < 2
{
//REVIVE

if instance_exists(Corpse)
{
crp = instance_nearest(x,y,Corpse)
if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0
{
wkick = 5
gunangle = point_direction(x,y,crp.x,crp.y)
with crp
{
//instance_create(x,y,ReviveFX)
//instance_change(Freak,true)
with instance_nearest(x,y,Floor)
instance_create(x+16+random(16)-8,y+16+random(16)-8,InvertedReviveArea);
}
snd_play(sndNecromancerRevive)
alarm[1] = 10+random(20)
}
}
}
else if random(2)<1
{

//TRANSFORM
	if instance_exists(InvertedFreak)
	{
	crp = instance_nearest(x,y,InvertedFreak)
	if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0
	{
	wkick = 5
	gunangle = point_direction(x,y,crp.x,crp.y)
	with crp
	{
		instance_create(x,y,ReviveFX)
		instance_destroy(id);
		with instance_create(x,y,InvertedExploFreak)
		{
			if other.raddrop == 0
				raddrop = 0;
		}
	}
	snd_play(sndNecromancerRevive)
	alarm[1] = 5+random(14)
	}

	}

}
else
{

	//TRANSFORM LEVEL 2
	if instance_exists(InvertedExploFreak)
	{
	crp = instance_nearest(x,y,InvertedExploFreak)
	if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0
	{
	wkick = 5
	gunangle = point_direction(x,y,crp.x,crp.y)
	with crp
	{
		instance_create(x,y,ReviveFX)
		instance_destroy(id);
		with instance_create(x,y,InvertedRhinoFreak)
		{
			if other.raddrop == 0
				raddrop = 0;
		}
	}
	snd_play(sndNecromancerRevive)
	alarm[1] = 10+random(20)
	}

	}

}

}
else
{
//DONT SEE PLAYER
if random(4) < 1
{
//REVIVE

if instance_exists(Corpse)
{
crp = instance_nearest(x,y,Corpse)
if collision_line(x,y,crp.x,crp.y,Wall,0,0) < 0
{
wkick = 5
gunangle = point_direction(x,y,crp.x,crp.y)
with crp
{
//instance_create(x,y,ReviveFX)
//instance_change(Freak,true)
with instance_nearest(x,y,Floor)
instance_create(x+16+random(16)-8,y+16+random(16)-8,InvertedReviveArea);

snd_play(sndNecromancerRevive)
}
alarm[1] = 15+random(5)
}
}


}
else if random(2) < 1
{
//WALK RANDOMLY
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
}
}
else if random(10) < 1
{
//PLAYER IS NOT THERE
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}


