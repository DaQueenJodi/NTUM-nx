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
		if sprite_index != spr_hurt
		{
			my_health -= dmgTaken;
			prevhealth = my_health;//Don't recognize this as dmg
		}
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
//Ignore collision when moving
var msk = mask_index;
mask_index = mskPickupThroughWall;
if owner > -1 && instance_exists(owner)
{
	x = owner.x + xOffset;
	y = owner.y + yOffset;
	if owner.walk > 0
	{
		walk += 0.9;
		if walk > sprite_get_number(sprNothingLeg)
		{
			walk = 0;
			snd_play_2d(sndNothingFootstep);
		}
	}
}
mask_index = msk;