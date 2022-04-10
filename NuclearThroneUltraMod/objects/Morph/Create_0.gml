event_inherited();
image_speed = 0.8;

BackCont.shake += 1
typ=0;
team = 2
dmg=1;
alarm[0] = 4;
if UberCont.ultramodSwap
{
	var um = GetPlayerUltramod()
	if um == ultramods.morphFire
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
}
else
{
	if instance_exists(Player)
	{
		if Player.skill_got[17] = 1
		{
			alarm[0] += Player.betterlaserbrain;
			alarm[0] += 2;
		}
	}
	repeat(3)
	with(instance_create(x,y,Smoke)){
	image_blend = make_color_rgb(244,145,255);
	}

	image_angle = random(360);
	rot = random_range(30,-30);
	image_alpha = 0.4;
}
