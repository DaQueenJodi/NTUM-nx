with instance_create(x,y,BoltTrail)
{
	colour = other.trailColour;
	image_angle=other.direction;
	image_xscale=other.speed;
}

if instance_exists(enemy) and instance_exists(Player)
{

if speed > 0 and Player.skill_got[21] = 1
{
dir = instance_nearest(x,y,enemy)
    if point_distance(x,y,dir.x,dir.y) < 30 +Player.betterboltmarrow//24
    {

with instance_create(x,y,BoltTrail)
{
image_angle=point_direction(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed)+180;
image_xscale=point_distance(x,y,other.dir.x-other.hspeed,other.dir.y-other.vspeed);
}  
    
    x = dir.x-hspeed
    y = dir.y-vspeed
    

    }

}}


if speed<1 && alarm[1] < 1
{
	alarm[1] = 10+random(20);//delay before destroying
	move_contact_solid(direction,16)
	image_index = 2
	image_speed = 0;
}

