/// @description Spawn projectiles
var angle = -60;
scrTarget();
var dir = point_direction(x,y,target.x,target.y);
var motiondiff = 0;

repeat(3)
{
	with instance_create(x,y,GuardianBullet)
	{	
		team = other.team;
		x += lengthdir_x(24 - 8*(motiondiff % 2), dir);
		y += lengthdir_y(24 - 8*(motiondiff % 2), dir);
		motion_add(dir+angle,1.8 - (motiondiff % 2));
	}
	motiondiff++;
	angle += 60;
}

instance_destroy();