/// @description El chunko libre
if intro
		BackCont.shake = max(BackCont.shake, 8);
if immune
{
	my_health = maxhealth;
	if !active && !intro
	{
		speed = 0;
		if instance_exists(Player)
		if (Player.y < y + 128) 
		{
			immune = false;
		}
		
	}
	exit;
}
if !active
{
	speed = 0;
	if (my_health < maxhealth)
	{
		immune = true;
		intro = true;
		spr_idle = sprNothingOff;
		spr_hurt = sprNothingOff;
		sprite_index = sprNothingOff;
		with ThroneFlame
		{
			image_index = 0;
			sprite_index = sprThroneFlameEnd;
		}
		alarm[0] = 30;//Become active time
	}
}
else
{
	
		
}
if (my_health <= 0)
{
	//This is the death event
	
}