ang = point_direction(x,y,mouse_x,mouse_y)
speed=0;
direction=point_direction(x,y,mouse_x,mouse_y)

repeat(argument0)
{
//move_contact_solid(ang,20)//44
var distancetravel=0;
do{
x+=lengthdir_x(2,ang);
y+=lengthdir_y(2,ang);
distancetravel+=2;
}
until(!place_free(x+lengthdir_x(2,ang),y+lengthdir_y(2,ang)) || place_meeting(x+lengthdir_x(2,ang),y+lengthdir_y(2,ang),Wall)||distancetravel>18)

instance_create(x,y,Dust)

with instance_create(x+lengthdir_x((Player.skill_got[13]+bettermelee)*20,ang),y+lengthdir_y((Player.skill_got[13]+bettermelee)*20,ang),Slash)
{
ang = other.ang
dmg = 14
longarms = 0
if instance_exists(Player)
longarms = (Player.skill_got[13]+other.bettermelee)*3
motion_add(ang,2+longarms)
image_angle = direction
team = other.team}
}
