if drama{
event_inherited()

//if sprite_index != spr_hurt
//motion_add(direction,0.8)
if walk > 0
{
motion_add(point_direction(x,y,target.x,target.y),0.2);
walk -= 1
motion_add(direction,1.5)
}

if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

if alarm[3] > 4
{
with instance_create(x+random(96)-48,y+random(96)-48,LaserCharge)
{
motion_add(point_direction(x,y,other.x,other.y),2+random(1))
alarm[0] = point_distance(x,y,other.x,other.y)/speed+1
}
repeat(12)   {
with instance_create(instance_nearest(x,y,Floor).x+random(6)-3,instance_nearest(x,y,Floor).y+random(6)-3,LaserCharge)
{
move_contact_solid(other.gunangle,random(480))
motion_add(random(360),1+random(1))
alarm[0] = 2+random(4)
}           }
}




if alarm[4]>0
{
image_angle+=10;
}
else
image_angle=0;

if dodge > 0
{

move_contact_solid(direction,1)
dodge -= 1
}

if point_distance(x,y,mouse_x,mouse_y)<60&&mask_index!=mskPickupThroughWall&&sprite_index!=spr_fire&&sprite_index!=sprInvertedChesireCatLaser && instance_exists(Floor)&&target>0{
if mouse_check_button_pressed(mb_left) and target > 0  && point_distance(x,y,instance_nearest(x,y,Floor).x,instance_nearest(x,y,Floor).y)<32
{
//if point_distance(x,y,target.x,target.y) < 64
//direction = point_direction(x,y,target.x,target.y)
//else
direction = point_direction(target.x+lengthdir_x(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,mouse_x,mouse_y)),target.y+lengthdir_y(point_distance(x,y,target.x,target.y)*0.95,point_direction(x,y,mouse_x,mouse_y)),x,y)+choose(90,-90)
dodge = 4
}
}

