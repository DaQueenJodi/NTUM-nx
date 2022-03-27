/// @description Tri shot
//if !fireTriShot
//{
	with NuclearThrone1Side
	{
		ammo = maxAmmo;
		alarm[3] = firerate;
	}
		
	fireTriShot = true;
	alarm[1] += NuclearThrone1Side.firerate*NuclearThrone1Side.maxAmmo;
//}