alarm[1] = 5+random(15)

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 10+random(12);
}

if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if random(14) < 1
{
snd_play(sndFlare);
direction = point_direction(x,y,target.x,target.y)+180
    with instance_create(x,y,EnemyLightningBall)
    {
    image_angle=random(360);
    motion_add(other.direction+180+(random(16)-8),3)
    team = other.team}
speed*=0.4;
image_index = 0
sprite_index = spr_fire
alarm[1] = 23

if instance_exists(Player)
{
if Player.loops>0
alarm[1] = 15;
}

walk=alarm[1];
}
else if random(18)<1
{
alarm=10+random(10)
walk=0;
}
else{
direction = point_direction(x,y,target.x,target.y)+random(20)-10
walk=alarm[1];}
}
else if random(60)<1{//very small chance to fire even though theres a wall
direction = point_direction(x,y,target.x,target.y)+180
    with instance_create(x,y,EnemyLightningBall)
    {
    image_angle=random(360);
    motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(8)-4),2)
    team = other.team}

image_index = 0
sprite_index = spr_fire
alarm[1] = 20
walk=0;
}
else if random(18)<1
{
walk=0;
alarm[1]=10+random(10);
}
else{
motion_add(random(360),1)
walk=alarm[1];}
}
else{ 
motion_add(random(360),0.5)
walk=alarm[1];}

