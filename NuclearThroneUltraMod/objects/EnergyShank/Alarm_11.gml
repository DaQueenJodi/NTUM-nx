/// @description Also explode

// Inherit the parent event
event_inherited();
var xx = x + lengthdir_x(24,image_angle);
var yy = y + lengthdir_y(24,image_angle);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
with instance_create(x,y,HeavyBloodBullet)
{
	scrCopyWeaponMod(other);
	direction = other.direction;
	image_angle = direction;
	speed = 14+other.speed;
	team = other.team;
	alarm[11] = 0;
}
