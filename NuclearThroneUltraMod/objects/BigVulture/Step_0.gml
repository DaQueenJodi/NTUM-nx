event_inherited()

if alarm[4] > 0
{
	instance_create(x,y,WallBreak);
	instance_create(x+random(8)-4,y+4+random(4),Dust)
	motion_add(direction,1.4);
	motion_add(chargeDirection,1);
	if speed > 12
		speed = 12;
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
		
	image_angle = direction;
}
else if alarm[7] < 1 //Charge tell
{
	if walk > 0
	{
		walk -= 1
		motion_add(direction,0.8)
	}

	if speed > 3
	speed = 3

	if corpseTarget > -1 && instance_exists(corpseTarget) && alarm[2] < 1
	{
		if point_distance(x,y,corpseTarget.x,corpseTarget.y) < 24
		{
			walk = 0;
			speed = 0;
			alarm[1] += 20;
			sprite_index = spr_eat;
			image_index = 0;
			alarm[2] = 5;
			alarm[3] = 1;
		}
	}
}