/// @description Change to ultrapellet
if GetPlayerUltramod() == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet4)
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