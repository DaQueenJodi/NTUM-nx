/// @description Destroy the storm
with Player
{
	Player.sheepPower -= 5;
	Player.speed *= 0.1;
}
instance_destroy();