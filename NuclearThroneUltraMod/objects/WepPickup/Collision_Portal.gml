if !persistent
{
	persistent = true
	snd_play(sndWepPortal);
	visible = false;
	var portalDepth = other.depth;
	with instance_create(x,y,ImpactFX)
	{
		sprite_index = sprWepPortal;
		image_angle=other.image_angle;
		depth = portalDepth - 1;
	}
}