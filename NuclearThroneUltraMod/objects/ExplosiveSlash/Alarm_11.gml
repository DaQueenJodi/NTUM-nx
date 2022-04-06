/// @description Also explode

// Inherit the parent event
event_inherited();
var xx = x + lengthdir_x(24,image_angle-20);
var yy = y + lengthdir_y(24,image_angle-20);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
xx = x + lengthdir_x(24,image_angle+20);
yy = y + lengthdir_y(24,image_angle+20);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
