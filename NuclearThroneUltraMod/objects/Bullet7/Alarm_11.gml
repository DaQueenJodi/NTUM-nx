/// @description Change to director bullet
if GetPlayerUltramod() == ultramods.bulletPellet
{
	with instance_create(x,y,Bullet8)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		team = other.team;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}