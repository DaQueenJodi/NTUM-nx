var maxspd = 14;
var modBoost = 1.5;
if instance_exists(Player)
{
	if Player.skill_got[30] == 1
		modBoost = 3;
	if Player.wepmod1 == 11
		maxspd += modBoost;
	if Player.wepmod2 == 11
		maxspd += modBoost;
	if Player.wepmod3 == 11
		maxspd += modBoost;
	if Player.wepmod4 == 11
		maxspd += modBoost;
}
with creator
{
motion_add(point_direction(x,y,mouse_x,mouse_y),1);

motion_add(direction,other.Speed);
with RocketSlash
{
x=other.x;
y=other.y;
image_angle=other.direction;
dmg+=0.02;
}
instance_create(x,y,Smoke);
if other.Speed>6
instance_create(x,y,Smoke);
if other.Speed>8
instance_create(x,y,Smoke);

if speed>maxspd//cap
speed=maxspd;
}


BackCont.shake += 0.3

Speed+=0.4 + ((maxspd-14)*0.6);

