/// @description El chunko libre
if intro
		BackCont.shake = max(BackCont.shake, 8);
if immune
{
	my_health = maxhealth;
	if !active
	{
		speed = 0;
		if (camera_get_view_y(view_camera[0]) < y + 32) 
		{
			debug("IMMUNE FALSE");
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
		with ThroneFlame
		{
			image_index = 0;
			sprite_index = sprThroneFlameEnd;
		}
		alarm[0] = 30;//Become active time
	}
}
if (my_health <= 0)
{
	//This is the death event
	//This piece will remain down here
	
}