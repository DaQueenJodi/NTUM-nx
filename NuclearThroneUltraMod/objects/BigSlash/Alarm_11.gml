/// @description Wider
var l = 64;
var xx = x + lengthdir_x(l,image_angle-30);
var yy = y + lengthdir_y(l,image_angle-30);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
xx = x + lengthdir_x(l,image_angle);
yy = y + lengthdir_y(l,image_angle);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
xx = x + lengthdir_x(l,image_angle+30);
yy = y + lengthdir_y(l,image_angle+30);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
xx = x + lengthdir_x(l,image_angle+60);
yy = y + lengthdir_y(l,image_angle+60);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
xx = x + lengthdir_x(l,image_angle-60);
yy = y + lengthdir_y(l,image_angle-60);
with instance_create(xx,yy,MeatExplosion)
{
	direction = other.direction;
	speed = other.speed;
	team = other.team;
	alarm[11] = 0;
}
var offset = 60;
with instance_create(x,y,HeavyBloodBullet)
{
	scrCopyWeaponMod(other);
	direction = other.direction-offset;
	image_angle = direction;
	speed = 14+other.speed;
	team = other.team;
	alarm[11] = 0;
}
with instance_create(x,y,BloodBullet)
{
	scrCopyWeaponMod(other);
	direction = other.direction+offset;
	image_angle = direction;
	speed = 14+other.speed;
	team = other.team;
	alarm[11] = 0;
}
