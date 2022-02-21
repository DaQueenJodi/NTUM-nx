alarm[1] = 22+random(12)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 17+random(10);
}

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 80
{
if random(4) < 1 && point_distance(target.x,target.y,x,y) < 180
{
//FIRE
alarm[2] = 1
ammo = 3
if instance_exists(Player)
{
if Player.loops>0
ammo=6
}
gunangle = point_direction(x,y,target.x,target.y)
alarm[1] = 20+random(5)
if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 10+random(5);

}
}
else
{
if random(4) < 1
snd_play(sndRavenScreech)
direction = point_direction(x,y,target.x,target.y)+random(90)-45
speed = 0.4
walk = 20+random(10)
gunangle = point_direction(x,y,target.x,target.y)

scrTarget()
if random(5) < 1 and target > 0
{
with Raven
{
if id != other.id and point_distance(x,y,other.x,other.y) < 120
{
if collision_line(other.target.x,other.target.y,x,y,Wall,1,1) < 0 and random(3) < 2
scrRavenLift()
}
}
}

}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 40+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(3) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
else if instance_number(enemy)<5 && random(2)<1
{
scrRavenLift()
with instance_furthest(x,y,Raven)
scrRavenLift()
}
else if (my_health < maxhealth or random(50) < 1) and random(2) < 1
{
scrRavenLift()
with instance_furthest(x,y,Raven)
scrRavenLift()
}
}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

