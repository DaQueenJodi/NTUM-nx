/// @description Inputs
if (keyboard_check_pressed(vk_up))
{
	if (hundredPercent[hundredPercentI] == vk_up)
	{
		event_user(0);
	}
	else
	{
		hundredPercentI = 0;
	}
	
	if (seed[seedI] == vk_up)
	{
		event_user(1);
	}
	else
	{
		seedI = 0;	
	}
}
else if (keyboard_check_pressed(vk_down))
{
	if (hundredPercent[hundredPercentI] == vk_down)
	{
		event_user(0);
	}
	else
	{
		hundredPercentI = 0;
	}
	
	if (seed[seedI] == vk_down)
	{
		event_user(1);
	}
	else
	{
		seedI = 0;	
	}
}
else if (keyboard_check_pressed(vk_left))
{
	if (hundredPercent[hundredPercentI] == vk_left)
	{
		event_user(0);
	}
	else
	{
		hundredPercentI = 0;
	}
	
	if (seed[seedI] == vk_left)
	{
		event_user(1);
	}
	else
	{
		seedI = 0;	
	}
}
else if (keyboard_check_pressed(vk_right))
{
	if (hundredPercent[hundredPercentI] == vk_right)
	{
		event_user(0);
	}
	else
	{
		hundredPercentI = 0;
	}
	
	if (seed[seedI] == vk_right)
	{
		event_user(1);
	}
	else
	{
		seedI = 0;	
	}
}