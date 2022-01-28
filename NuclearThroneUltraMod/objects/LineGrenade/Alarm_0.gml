if instance_exists(Player)
{
if (Player.race=11 && Player.ultra_got[42]==1)//HUNTER ULTRA B Homing projectiles
{
direction=point_direction(x,y,mouse_x,mouse_y);
target=instance_nearest(x+lengthdir_x(80,direction),y+lengthdir_y(80,direction),enemy);// nearest in direction of cursor

if instance_exists(target)
{
        if!(collision_line(x,y,target.x,target.y,Wall,false,true) )//No walls between player and target?
        {
            if(direction<point_direction(x,y,target.x,target.y)+30+(30*Player.skill_got[19]))
            {
            direction=point_direction(x,y,target.x,target.y);
            }
       }
}
}

move_contact_solid(direction,16)

repeat(4){
with instance_create(x,y,Smoke)
motion_add(random(360),random(4))
}
//instance_create(x,y,Explosion);
Sleep(20)
dir = 0
do {dir += 1 x += lengthdir_x(4,direction) y += lengthdir_y(4,direction)
if point_distance(x,y,Player.x,Player.y)>74
{
//instance_create(x,y,Explosion);
if instance_exists(Explosion){
if point_distance(x,y,instance_nearest(x,y,Explosion).x,instance_nearest(x,y,Explosion).y)>32
instance_create(x+lengthdir_x(random(16),random(360)),y+lengthdir_y(random(16),random(360)),Explosion)
}
else 
instance_create(x+lengthdir_x(random(16),random(360)),y+lengthdir_y(random(16),random(360)),Explosion)

}
if(random(6)<1){
with instance_create(x,y,Smoke)
motion_add(random(360),random(2))
}

}
until dir > 100 or place_meeting(x,y,Wall)
alarm[1] = 2

speed = 4
}

