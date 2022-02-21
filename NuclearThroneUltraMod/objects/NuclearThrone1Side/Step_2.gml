/// @description Transfer damage to main body

// Inherit the parent event
event_inherited();

hspeed = 0;
vspeed *= 0.1;

if (my_health < prevhealth)
{
	var dmgTaken = prevhealth - my_health;
	if sprite_index == spr_hurt
	{
		if (isLeft)
		{
			if disable
				spr_hurt = sprNothingLeftDeactivatedHurt;
			else
				spr_hurt = sprNothingLeftHurt;
		}
		else
		{
			if disable
				spr_hurt = sprNothingRightDeactivatedHurt;
			else
				spr_hurt = sprNothingRightHurt;
		}
		//Use correct sprite index
		sprite_index = spr_hurt;
	}
	with owner
	{
		my_health -= dmgTaken;
		prevhealth = my_health;//Don't recognize this as dmg
		sprite_index = sprNothingMiddleHurtLink;
		if disable
			spr_hurt = sprNothingMiddleDeactivatedHurtLink;
		else
			spr_hurt = sprNothingMiddleHurtLink;
		image_index = 0;
		if other.id == leftSide
		{
			with rightSide
			{
				if disable
					spr_hurt = sprNothingRightDeactivatedHurtLink;
				else
					spr_hurt = sprNothingRightHurtLink;
				sprite_index = spr_hurt;
				image_index = 0;
			}
		}
		else
		{
			with leftSide
			{
				if disable
					spr_hurt = sprNothingLeftDeactivatedHurtLink;
				else
					spr_hurt = sprNothingLeftHurtLink;
				sprite_index = spr_hurt;
				image_index = 0;
			}	
		}
	}
}