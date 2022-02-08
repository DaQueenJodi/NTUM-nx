/// @description safety first enemy outside level
if !place_meeting(x,y,Floor) && !place_meeting(x,y,FloorExplo)
instance_destroy();

if !instance_exists(GenCont){
if collision_point(x+random(4)-2,y+random(4)-2,Wall,false,true)//this may be a little intense
{
with other
{instance_destroy();
instance_create(x,y,FloorExplo);}
}}

alarm[10]=500;

