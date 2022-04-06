///scrUltraModName();
// /@description
///@param
function scrUltraModName(um){
	var umn = [];
	switch (um)
	{
		case ultramods.nothing:
			umn[0] = "UNKNOWN";
			umn[1] = "ULTRA MOD";
		break;
		case ultramods.bulletPellet:
			umn[0] = "BULLET";
			umn[1] = "SHOTGUN PELLET";
		break;
		case ultramods.laserHeavyBullet:
			umn[0] = "LASER";
			umn[1] = "HEAVY BULLET";
		break;
		case ultramods.lightningKraken:
			umn[0] = "LIGHTNING";
			umn[1] = "KRAKEN";
		break;
		case ultramods.toxicFire:
			umn[0] = "TOXIC";
			umn[1] = "FIRE";
		break;
		case ultramods.pelletElectro:
			umn[0] = "SHOTGUN PELLET";
			umn[1] = "ELECTRO";
		break;
		case ultramods.boltPlasma:
			umn[0] = "PLASMA";
			umn[1] = "BOLT";
		break;
		case ultramods.plasmaRocket:
			umn[0] = "PLASMA";
			umn[1] = "ROCKET";
		break;
		/**
		case ultramods.grenadeRocket:
			umn[0] = "GRENADE";
			umn[1] = "ROCKET";
		break;
		*/
		case ultramods.meleeBlood:
			umn[0] = "MELEE";
			umn[1] = "BLOOD";
		break;
		
		case ultramods.boltRocket:
			umn[0] = "BOLT";
			umn[1] = "ROCKET";
		break;
		case ultramods.boltLaser:
			umn[0] = "BOLT";
			umn[1] = "LASER";
		break;
		case ultramods.heavyBoltNuke:
			umn[0] = "HEAVY BOLT";
			umn[1] = "NUKE";
		break;
		case ultramods.seekerMissile:
			umn[0] = "SEEKER";
			umn[1] = "MISSILE";
		break;
	
	
		case ultramods.slugFatBullet:
			umn[0] = "SLUG";
			umn[1] = "FAT BULLET";
		break;
		case ultramods.boltSlug:
			umn[0] = "SLUG";
			umn[1] = "BOLT";
		break;
		case ultramods.splinterBullet:
			umn[0] = "SPLINTER";
			umn[1] = "BULLET";
		break;
		case ultramods.splinterPellet:
			umn[0] = "SPLINTER";
			umn[1] = "SHOTGUN PELLET";
		break;
	
	
		case ultramods.bulletMiniPlasma:
			umn[0] = "BULLET";
			umn[1] = "MINI PLASMA";
		break;
		case ultramods.splinterElectro:
			umn[0] = "SPLINTER";
			umn[1] = "ELECTRO";
		break;
		case ultramods.heavyBoltMegaLaser:
			umn[0] = "HEAVY BOLT";
			umn[1] = "MEGA LASER";
		break;
		case ultramods.bladeGrenade:
			umn[0] = "BLADE";
			umn[1] = "GRENADE";
		break;
		default:
			umn[0] = "UNKNOWN";
			umn[1] = "ULTRA MOD";
		break;
	}
	return umn;
}