/// @description Change to director pellet
if GetPlayerUltramod() == ultramods.bulletShotgun
{
	with instance_create(x,y,Bullet7)
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