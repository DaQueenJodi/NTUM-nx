/// @description Move

// Inherit the parent event
event_inherited();

hspeed = 0;
x = xStart;
vspeed *= 0.1;
if instance_exists(ThroneBeam)
{
	y = beamY;	
}
if (intro && image_speed > 0)
{
	//Bullets can set image_index to 0 canceling our beautifull intro
	debug(sprite_get_name(sprite_index));
	prevImageIndex += image_speed
	image_index = prevImageIndex;
}
else if active
{
	if (my_health < prevhealth)
	{
		//var dmgTaken = prevhealth - my_health;
		if sprite_index == spr_hurt
		{
			if disable
				spr_hurt = sprNothingMiddleDeactivatedHurt;
			else
				spr_hurt = sprNothingMiddleHurt;
			sprite_index = spr_hurt;
		}
		with rightSide
		{
			if disable
				spr_hurt = sprNothingRightDeactivatedHurtLink;
			else
				spr_hurt = sprNothingRightHurtLink;
			sprite_index = spr_hurt;
			image_index = 0;
		}
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