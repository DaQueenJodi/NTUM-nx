/// @description Spawn guardianBullet dead
with instance_create(x,y,ScorpionBulletHit)
{
	if other.sprite_index == sprInvertedSquareGuardianBullet
		sprite_index = sprInvertedGuardianBulletHit;	
	else
		sprite_index = sprGuardianBulletHit;	
}