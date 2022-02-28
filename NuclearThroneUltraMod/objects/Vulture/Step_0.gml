event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}

if speed > 3
speed = 3

if corpseTarget > -1 && alarm[2] < 1
{
	if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
	{
		walk = 0;
		speed = 0;
		alarm[1] += 20;
		sprite_index = spr_eat;
		image_index = 0;
		alarm[2] = 5;
	}
}