/// @description VANSPAWNER
if instance_exists(Player)
{
	var dir = random(360);

	var xx = Player.x + lengthdir_x(300,dir);
	var yy = Player.y + lengthdir_y(300,dir);
	with instance_create(xx,yy,VanFanSpawn)
	{
		image_angle = dir + 180;	
	}


	spawnTime *= 0.97;
	warnTime *= 0.94;
	vanSpeed *= 1.059;
	vanSpeed = min(vanSpeed,40);
	closeTimeMultiply *= 1.058;
	alarm[0] = max(1,spawnTime);
}