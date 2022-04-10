/// @description ultramod
var um = GetPlayerUltramod();
if um == ultramods.toxicFire
{
	with instance_create(x,y,ToxicThrowerGas)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		alarm[11] = 0;
	}
	instance_destroy(id,false);
}
else if um == ultramods.morphFire
{
	UberCont.ultramodSwap = false;
	with instance_create(x,y,Morph)
	{
		scrCopyWeaponMod(other);
		direction = other.direction;
		image_angle = direction;
		speed = other.speed;
		alarm[0] --;
		alarm[11] = 0;
	}
	UberCont.ultramodSwap = true;
}
