///AI
if instance_exists(Player) && !fire && sprite_index != spr_appear && sprite_index != spr_disappear 
{

alarm[1] = 20+random(20);

scrTarget()
if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if random(3) < 2
		{
			fire = true;
			spr_idle = spr_fire;
			spr_walk = spr_fire;
			image_index = 0;
			gunangle = point_direction(x,y,target.x,target.y)
			var angle = -60;
			var dir = point_direction(x,y,target.x,target.y);
			var motiondiff = 0;
			snd_play(sndGuardianFire, 0.15);

			repeat(3)
			{
				with instance_create(x,y,GuardianBulletSpawn)
				{	
					team = other.team;
					owner = other.id;
					x += lengthdir_x(-8*(motiondiff % 2), dir);
					y += lengthdir_y(-8*(motiondiff % 2), dir);
					motion_add(dir+angle,1.8 - (motiondiff % 2));
				}
				motiondiff++;
				angle += 60;
			}
			alarm[1] = 20;
		}
		
		if random(4) < 3 {
			alarm[2] = 15;
		}
		
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
}

}
else
{
	alarm[1] = 20;
}

if random(3) < 1 {
	direction = random(360)
}