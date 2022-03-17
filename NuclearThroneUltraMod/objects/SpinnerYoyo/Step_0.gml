instance_create(x,y,DiscTrail);
if followOwner && owner > -1 && instance_exists(owner)
{
	tx = owner.x;
	ty = owner.y;
}
x = tx + lengthdir_x(length,oDir);
y = ty + lengthdir_y(length,oDir);
if instance_exists(Player) and instance_exists(enemy)
{
	var dir = instance_nearest(x,y,enemy)
	if Player.skill_got[21] = 1 and point_distance(x,y,dir.x,dir.y) < 48 +Player.betterboltmarrow
	{
		x += lengthdir_x(4,point_direction(x,y,dir.x,dir.y))
		y += lengthdir_y(4,point_direction(x,y,dir.x,dir.y))
		oDir -= (angle_difference(oDir,point_direction(tx,ty,dir.x,dir.y))*0.6);
		length -= speed*0.6;
	}
}
if speed < 0
{
	if rotation > 0
		oDir += max((rotation/length)*2,10);
	else
		oDir += min((rotation/length)*2,-10) ;
}
else
{
	if rotation > 0
		oDir += clamp(rotation/(maxlength-length),1,2);
	else
		oDir += clamp(rotation/(maxlength-length),-2,-1);
		
}
length += speed;
if (point_distance(tx,ty,x,y) > maxlength && speed > 0)
{
	speed = -3;
}
else if (length <= 2 && speed < 0)
{
	instance_destroy();
	instance_create(x,y,DiscDisappear);
}
image_angle+=20;
if instance_exists(Player) and instance_exists(enemy)
{dir = instance_nearest(x,y,enemy)
if speed > 0 and Player.skill_got[21] = 1 and point_distance(x,y,dir.x,dir.y) < 48 +Player.betterboltmarrow
{x += lengthdir_x(4,point_direction(x,y,dir.x,dir.y))
y += lengthdir_y(4,point_direction(x,y,dir.x,dir.y))}}