alarm[1] = 5+random(11)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 5+random(5);
}

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 48
{
if random(4) < 1 && point_distance(target.x,target.y,x,y) < 300
{
snd_play(sndEnemyFire)
wkick = -8
gunangle = point_direction(x,y,target.x,target.y)
direction = point_direction(x,y,target.x,target.y)
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(12)-6,3.3)
image_angle = direction
team = other.team
}with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(12)-6,4)
image_angle = direction
team = other.team
}with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(12)-6,4.5)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(12)-6,3.6)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(12)-6,4)
image_angle = direction
team = other.team
}


with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(30)-15,3)
image_angle = direction
team = other.team
}with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(30)-15,4)
image_angle = direction
team = other.team
}with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(30)-15,4.5)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(30)-15,5.5)
image_angle = direction
team = other.team
}
with instance_create(x,y,EnemyBullet5)
{
motion_add(other.direction+random(30)-15,4)
image_angle = direction
team = other.team
}





alarm[1] = 5+random(10)}
else if random(10)<1
{
direction=point_direction(x,y,target.x,target.y)+180;
speed = 0.4
walk = 5+random(15);
gunangle = point_direction(x,y,target.x,target.y);
}
else
{direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 0.4
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

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
else if random(4) < 1
{
motion_add(random(360),0.4)
walk = 10+random(10)
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
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

