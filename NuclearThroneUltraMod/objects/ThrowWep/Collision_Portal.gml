persistent = true
if (!dontteleport)
{
	snd_play(sndWepPortal);
	visible = false;
	speed = 0;
	var portalDepth = other.depth;
	with instance_create(x,y,ImpactFX)
	{
		sprite_index = sprWepPortal;
		image_angle=other.image_angle;
		depth = portalDepth - 1;
	}
}
dontteleport=true;