if !instance_exists(Player)
{instance_destroy();exit;}

if instance_exists(enemy)
{
if Player.skill_got[19]//eagle eyes
{
if collision_line(x,y,instance_nearest(x,y,enemy).x,instance_nearest(x,y,enemy).y,Wall,0,0) < 0
target=instance_nearest(x,y,enemy);
else
{
target=0
var WALL;
WALL=instance_nearest(x,y,Wall);
if point_distance(x,y,WALL.x,WALL.y)<32
motion_add(point_direction(x,y,WALL.x,WALL.y)+180,point_distance(x,y,WALL.x,WALL.y)*0.02);//move away from wall
}

}
else if alarm[0]<1
target=instance_nearest(x,y,enemy);

if target!=0
motion_add(point_direction(x,y,target.x,target.y),0.8+Player.skill_got[19]);
}
motion_add(direction,1);
if speed>6+Player.skill_got[19]
speed=6+Player.skill_got[19];

image_angle=direction;

if random(2)<1
instance_create(x,y,Smoke);

