if(instance_exists(Player)){
if (Player.race=11 && Player.ultra_got[42]==1 && aimed=false)//HUNTER ULTRA B Homing projectiles
{
aimed=true;
direction=point_direction(x,y,mouse_x,mouse_y);
target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

if instance_exists(target)
{
        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
        {
            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
            {
            image_angle=point_direction(x,y,target.x,target.y);
            }
       }
}
}
}

var dir;
dir = 0

do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 16) or place_meeting(x,y,Wall) or dir > 160

alarm[0] = 2

image_xscale = point_distance(x,y,xstart,ystart)/2
instance_create(x,y,Smoke)

