/// @description Also Morph

// Inherit the parent event
event_inherited();
var xx = x + lengthdir_x(24,image_angle);
var yy = y + lengthdir_y(24,image_angle);
with instance_create(xx,yy,Morph)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
}
