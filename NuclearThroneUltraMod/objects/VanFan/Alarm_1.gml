/// @description SLOW VANSPAWNER
if instance_exists(Player)
{
	var dir = random(360);

	var xx = Player.x + lengthdir_x(300,dir);
	var yy = Player.y + lengthdir_y(300,dir);
	with instance_create(xx,yy,VanFanSpawn)
	{
		image_angle = dir + 180;
		isSlow = true;
	}
	alarm[1] = spawnTime * 2;
}