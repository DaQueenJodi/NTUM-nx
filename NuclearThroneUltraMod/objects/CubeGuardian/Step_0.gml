event_inherited()
if charge
{
	imageIndex += 0.4;
	if sprite_index != spr_hurt
		sprite_index = spr_charge;
		
	if round(imageIndex) == image_number - 3 && !fired
	{
		event_user(0);	
	}
	speed = 0;
}
else
{
speed = max(speed,2);
motion_add(direction,2)

if speed > 3.5
speed = 3.5
}