/// @description Transfer damage to main body

// Inherit the parent event
event_inherited();

hspeed *= 0.1;
vspeed *= 0.1;

if (my_health < prevhealth)
{
	var dmgTaken = prevhealth - my_health;
	with owner
	{
		my_health -= dmgTaken;
		sprite_index = spr_hurt;
		image_index = 1;
	}
}