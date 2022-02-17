/// @description Destroy projectiles
with other
{
	if other.team != team
	{
		if object_index != EnemyLaser && object_index != Lightning
		{
			instance_destroy();
		}
	}
}