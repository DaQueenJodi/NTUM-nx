/// @description ultramod//16 is normal speed
var acc = 1;
if instance_exists(Player)
	acc = Player.accuracy*0.5;
var ol = 8+speed;
var xx = x + lengthdir_x(ol,image_angle+180);
var yy = y + lengthdir_y(ol,image_angle+180);
with instance_create(xx,yy,HeavyBloodBullet)
{
	scrCopyWeaponMod(other);
	direction = other.direction;
	image_angle = direction;
	speed = 14+other.speed;
	team = other.team;
	alarm[11] = 0;
}
		
instance_destroy(id,false);
