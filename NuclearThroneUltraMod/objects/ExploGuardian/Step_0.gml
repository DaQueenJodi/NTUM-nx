event_inherited()




if charge
	speed = 0;
else if fire 
{
	sprite_index = spr_fire;
	speed = 0;
}
else if speed < 1
	speed = 1;
	
motion_add(direction,2)

if speed > 4
speed = 4