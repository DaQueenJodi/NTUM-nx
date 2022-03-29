event_inherited()

speed = 0;
if hasHadIntro
{
	if imageIndex < image_number -1
	{
		imageIndex += image_speed;
	}
	else if sprite_index != spr_hurt && active
	{
		spr_idle = spr_normal;
		spr_walk = spr_normal;
		sprite_index = spr_normal;
	}
}