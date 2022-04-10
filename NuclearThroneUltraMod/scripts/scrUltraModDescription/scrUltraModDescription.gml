///scrUltraModDescription();
// /@description
///@param
function scrUltraModDescription(um){
	var umn = "";
	switch (um)
	{
		case ultramods.nothing:
			umn = "UNKNOWN";
		break;
		case ultramods.bulletShotgun:
			umn = @"SWAPS\n
			BULLETS <WITH> PELLETS
			DIRECTOR BULLETS <WITH> DIRECTOR PELLETS
			FLAME PELLETS <WITH> FLAME BULLETS
			ULTRA BULLETS <WITH> ULTRA PELLETS"
		break;
		case ultramods.laserBullet:
			umn = @"SWAPS
			LASERS <TO> 3 BULLET
			BULLETS <TO> LASERS
			BOUNCER LASERS <TO> 2 BOUNCER BULLETS
			BOUNCER BULLETS <TO> BOUNCER LASERS
			HEAVY BULLETS <TO> 1 ULTRA LASER
			MEGA LASERS <TO> 2 FAT BULLETS
			FAT BULLETS <TO> MEGA LASERS
			ULTRA LASERS <TO> 2 ULTRA BULLETS
			ULTRA BULLETS <TO> 3 ULTRA LASERS
			ULTRA MEGA LASERS <TO> 4 ULTRA BULLETS"
		break;
		case ultramods.lightningKraken:
			umn = @"SWAPS\n
			LIGHTNING <WITH> KRAKEN"
		break;
		case ultramods.toxicFire:
			umn = @"SWAPS\n
			TOXIC <WITH> FIRE
			ULTRA TOXIC <WITH> ULTRA FIRE"
		break;
		case ultramods.shotgunElectro:
			umn = @"SWAPS\n
			SHOTGUN PELLETS <WITH> ELECTRO BALLS"
		break;
		case ultramods.plasmaBolt:
			umn = @"SWAPS\n
			PLASMA <WITH> BOLTS
			BOUNCER PLASMA <WITH> BOUNCER BOLTS
			HEAVY BOLTS <TO> PLASMA CANNON BALLS"
		break;
		case ultramods.plasmaRocket:
			umn = @"SWAPS\n
			PLASMA <WITH> ROCKETS
			BOUNCER PLASMA <WITH> BOUNCER ROCKETS
			NUKES <TO> PLASMA CANNON BALLS"
		break;
		case ultramods.bloodMelee:
			umn = @"SWAPS\n
			MELEE SLASHES/SHANKS <WITH> 
			MULTIPLE HEAVY BLOOD BULLETS
			
			STRONGER/ENERGY SLASHES/SHANKS <WITH> 
			MULTIPLE HEAVY BLOOD BULLETS AND BLOOD EXPLOSIONS
			wds
			ULTRA SLASHES/SHANKS <WITH> MULTIPLE UTLRA BLOOD BULLETS
			BLOOD EXPLOSIONS <WITH> SLASHES"
		break;
		
		case ultramods.rocketBolt:
			umn = @"SWAPS\n
			ROCKETS <WITH> BOLTS
			BOUNCER PLASMA <WITH> BOUNCER ROCKETS
			NUKES <TO> PLASMA CANNON BALLS"
		break;
		case ultramods.laserBolt:
			umn = @"SWAPS\n
			LASERS <WITH> BOLTS
			BOUNCER LASERS <WITH> BOUNCER BOLTS
			HEAVY BOLTS <WITH> HEAVY BOLTS"
		break
		case ultramods.seekerMissile:
			umn = @"SWAPS\n
			SEEKERS <WITH> MISSILES"
		break;
		case ultramods.shotgunBolt:
			umn = @"SWAPS\n
			SHOTGUN PELLETS <WITH> SPLINTERS
			SLUGS <WITH> BOLTS
			HEAVY SLUGS <WITH> HEAVY BOLTS
			ULTRA SPLINTER <WITH> ULTRA PELLET"
		break;
		case ultramods.splinterBullet:
			umn = @"SWAPS\n
			SPLINTERS <WITH> BULLETS
			ULTRA SPLINTERS <WITH> ULTRA BULLETS"
		break;
	
	
		case ultramods.bulletPlasma:
			umn = @"SWAPS\n
			BULLETS <WITH> MINI PLASMA
			HEAVY BULLETS <WITH> PLASMA
			BOUNCER BULLETS <WITH> BOUNCER PLASMA"
		break;
		case ultramods.splinterElectro:
			umn = @"SWAPS\n
			SPLINTERS <WITH> ELECTRO"
		break;
		case ultramods.bladeGrenade:
			umn = @"SWAPS\n
			BLADES <WITH> GRENADES"
		break;
		
		case ultramods.toxicSwarm:
			umn = @"SWAPS\n
			TOXIC <WITH> SWARM"
		break;//hesitant about this one but lets just play it out for an update
		case ultramods.bloodExplosionExplosion:
			umn = @"SWAPS\n
			BLOOD EXPLOSIONS <WITH> EXPLOSIONS"
		break;
		case ultramods.snowSwarm:
			umn = @"SWAPS\n
			SNOW <WITH> SWARM"
		break;
		case ultramods.morphFire:
			umn = @"SWAPS\n
			MORPH <WITH> FIRE"
		break;
		
		default:
			umn[0] = "UNKNOWN";
			umn[1] = "ULTRA MOD";
		break;
	}
	return umn;
}