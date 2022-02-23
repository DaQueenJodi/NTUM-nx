/// @description Tri shot
//if !fireTriShot
//{
	with NuclearThrone1Side
	{
		ammo = maxAmmo;
		alarm[1] = firerate;
	}
		
	fireTriShot = true;
	alarm[1] += NuclearThrone1Side.firerate*NuclearThrone1Side.maxAmmo;
//}