function scrDrawBloom() {
	if bloomAlpha=0
	exit;
	var ba = bloomAlpha;
	//if instance_count>2000 emergancy when there is just too much going on
	//exit;

	draw_set_blend_mode(bm_add)
	if instance_exists(Player){
	with Bullet1
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d

	with RogueBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d

	with Bullet8//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d

	with BloodBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d

	with Bullet4
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d

	}
	with PlutoFX
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,ba+0.01)
	
	with HorrorBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3))//roids ultra d

	with MorphSlash//the only melee with bloom cause I can
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with PartnerBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Partner
	draw_sprite_ext(sprPlasmaBall,-1,x,y,1.5,1.5,image_angle,c_white,ba+0.01)
	with ToxicGas
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with ToxicThrowerGas
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Deflect
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Bullet2//PELLETS
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Bullet6//FLAME PELLETS
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Bullet7//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with DirectorGrenade//DIRECTOR
	draw_sprite_ext(sprDirectorGrenadeBloom,0,x,y,2,2,image_angle,c_white,ba+0.01)
	with RedirectFX//DIRECTOR
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Bullet9//FLAME DIRECTOR PELLETS
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Bullet5
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Flames
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with SheepHyperDashTrail
	draw_sprite_ext(bloomSprite,-1,x,y,2,2,image_angle,c_white,(ba+0.01)*image_alpha)
	if instance_exists(Player)
	{
	with Rage{
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,Player.rage*0.001)}

	with AngelDeflect//ANGEL PROTECTOR ULTRA A
	draw_sprite_ext(sprite_index,-1,x,y,1,1,image_angle,c_white,(ba*0.35)*Player.speed);

	with Bullet3//bouncer
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d


	with FreezeBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d


	with HeavyBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d

	with FatBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d
	}

	with PlasmaBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with PlasmaFX
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with MiniPlasmaBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with LaserCannon
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale*2,image_yscale*2,image_angle,c_white,ba+0.01)
	with Lightning
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba+0.01)

	with ArmourStrike
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba+0.01)

	with ArmourStrikeStart
	draw_sprite_ext(sprArmourStrikeStartBloom,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba+0.01)

	with ArmourStrikeHit
	draw_sprite_ext(sprArmourStrikeEndBloom,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba+0.01)

	with UltraLightning
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba+0.01)

	with HorrorBeam
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale*2,image_angle,c_white,ba+0.01)

	with FlakBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with FrostFlakBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d
	with AssassinBoss
	{
		var size = ds_list_size(afterImage);
		for (var i = 0; i <  size; i++) {
			var aimage = afterImage[| i];
			draw_sprite_ext(aimage.sp,aimage.ii,aimage.xx,aimage.yy,aimage.xs,1,0,c_white,clamp(aimage.time + 0.2,0.2,1));
		}	
	}
	if instance_exists(Player){
	with BouncerFlakBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,(Player.ultra_got[28]*0.3)+ba+0.01)//roids ultra d
	}

	with SuperFlakBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with SuperBouncerFlakBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with PlasmaBig
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with PlasmaHuge
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with PlasmaImpact
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with MiniPlasmaImpact
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBullet3
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBullet5
	draw_sprite_ext(sprEnemyBullet4,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBouncerBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Slug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with UltraSlug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with DirectorSlug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with HeavySlug
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with SlashShotgunPrep
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Ray
	draw_sprite_ext(sprite_index,-1,x,y,3,3,image_angle,c_white,ba+0.01)
	with SwordBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with LavaBubble
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with GunWarrant
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EuphoriaShield
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Disc
	draw_sprite_ext(sprite_index,-1,xprevious,yprevious,1,1,image_angle,c_white,ba+0.01)
	with MiniFlameCannonBall
	draw_sprite_ext(sprMiniFlameCannonBallBloom,image_index,x,y,2,2,image_angle,c_white,ba+0.01)
	with FlameCannonBall
	draw_sprite_ext(sprFlameCannonBallBloom,image_index,x,y,2,2,image_angle,c_white,ba+0.01)
	with FlameCannonBall
	draw_sprite_ext(sprite_index,image_index,x,y,2,2,image_angle,c_white,ba+0.01)
	with HotDrakeFlameCannon
	draw_sprite_ext(sprHotDrakeFlameCannonBloom,image_index,x,y,2,2,image_angle,c_white,ba+0.01)
	with HotDrakeSplitBall
	draw_sprite_ext(sprHotDrakeSplitBallBloom,image_index,x,y,3,2,image_angle,c_white,ba+0.01)

	with InvertedHotDrakeSplitBall
	draw_sprite_ext(sprInvertedHotDrakeSplitBallBloom,image_index,x,y,3,3,image_angle,c_white,ba+0.01)

	with LavaBallEnemy
	draw_sprite_ext(sprHotDrakeFlameCannonBloom,image_index,x,y,2,2,image_angle,c_white,ba+0.01)
	with WeaponCharge
	draw_sprite_ext(sprite_index,image_index,x,y,2,2,image_angle,c_white,ba+0.01)

	with Player
	{
	if race=13 && (KeyCont.key_spec[p] = 1 || KeyCont.key_spec[p] = 2)
	{
	draw_sprite_ext(sprite_index,image_index,x,y,right,1,image_angle,c_white,(Player.ultra_got[49]*2)*sheepPower/10);}
	if race = 9 and bskin
	draw_sprite_ext(sprite_index,image_index,x,y,right*1.2,1.2,image_angle,c_white,ba+0.01)
	if skill_got[8]//gamma guts
	{
		draw_sprite_ext(sprGammaGuts,wave,x,y,1.1,1.1,image_angle,c_white,ba+0.01)
		with CrystalShield
		{
			draw_sprite_ext(sprGammaGuts,other.wave,x,y,2.3,2.6,image_angle,c_white,ba+0.02)
		}
	}
	}
	with GammaGutsBlast
	{
		draw_sprite_ext(sprite_index,-1,x,y,1.1,1.1,image_angle,c_white,ba+0.01)
	}
	if instance_exists(Player){

	with SheepStorm
	{
		draw_sprite_ext(bloomSprite,imageIndex,x,y,(Player.sheepPower/10)+1,(Player.sheepPower/10)+1,image_angle,c_white,clamp(alpha*0.3,0.05,0.3));
	}
	if ( (Player.race==11)&&(Player.ultra_got[41]==1)   )
	{
	    with enemy
	    {
	        if(point_distance(x,y,Player.x,Player.y)>100)
	        {
	        draw_sprite_ext(sprHunterUltraBMark,-1,x,y,size,size,image_angle,c_green,0.2);
	        }
	        else
	        {
	        draw_sprite_ext(sprHunterUltraBMark,-1,x,y,size,size,image_angle,c_green,0.05);
	        }
        
	    }
	}
	}

	with Laser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,2,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprLaserStart,img,xstart,ystart,2,2,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprLaserEnd,img,x,y,2,2,image_angle,c_white,ba+0.01)
	}
	with MegaLaser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,5,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprLaserStart,img,xstart,ystart,5,5,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprLaserEnd,img,x,y,5,5,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprPlasmaBall,img,xstart+lengthdir_x(8,Direction),ystart+lengthdir_y(8,Direction),2,2,image_angle,c_white,1)
	}
	with EnemyLaser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,2,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprEnemyLaserStart,img,xstart,ystart,2,2,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprEnemyLaserEnd,img,x,y,2,2,image_angle,c_white,ba+0.01)
	}
	with IDPDLaser
	{
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,2,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprEnemyLaserStart,img,xstart,ystart,2,2,image_angle,c_white,ba+0.01)
	draw_sprite_ext(sprEnemyLaserEnd,img,x,y,2,2,image_angle,c_white,ba+0.01)
	}

	with Floor
	{
	if sprite_index = sprFloor2B
	draw_sprite_ext(sprFloor2BBloom,image_index,x,y,1,1,image_angle,c_white,ba+0.01)

	if sprite_index = sprFloor102B
	draw_sprite_ext(sprFloor102BBloom,image_index,x,y,1,1,image_angle,c_white,ba+0.01)
	}

	with LaserCharge
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBullet1
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBullet1Square
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with AllyBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with RadChest
	draw_sprite_ext(sprRadChestGlow,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBullet2
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBullet3
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EnemyBullet4
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with IDPDBullet
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Explosion
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Bolt
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with MeatExplosion
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with BulletHit
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with EBulletHit
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with ScorpionBulletHit
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with TrapFire
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Flame
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with IceFlame
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with IceCannonBall
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with Portal
	draw_sprite_ext(sprite_index,-1,x,y,2*image_xscale,2*image_yscale,image_angle,c_white,ba+0.01)
	with IDPDSpawn
	draw_sprite_ext(sprite_index,-1,x,y,2*image_xscale,2*image_yscale,image_angle,c_white,ba+0.01)
	with Implosion
	draw_sprite_ext(sprite_index,-1,x,y,2*image_xscale,2*image_yscale,image_angle,c_white,ba+0.01)

	with Rad
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	with BigRad
	draw_sprite_ext(sprite_index,-1,x,y,2,2,image_angle,c_white,ba+0.01)
	draw_set_blend_mode(bm_normal)

	//with HotDrakeLava
	//draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,0.5)



}
