alarm[1] = 10+random(10)
scrTarget()
walk = 0
if jumpUp || jumpDown || fire
	exit;
if target > 0
{
//GOT TARGET
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 320
{
//CAN SEE
direction = point_direction(x,y,target.x,target.y)+random(60)-30
if (random(3) <1)
{
	fire = true;
	sprite_index = spr_fire;
	spr_idle = spr_fire;
	spr_walk = spr_fire;
	speed *= 0.2;
	alarm[2] = 20;//chargeup time
}

}
else
{
	//CANT SEE
	direction = random(360)

	alarm[1] *= 0.5
}

}

