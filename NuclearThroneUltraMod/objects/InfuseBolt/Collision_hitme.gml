if other.team != team && !dealtDamage
{
	dealtDamage = true;
		snd_play(sndGrenadeStickWall)
	speed = 0
	x = other.x+offx
	y = other.y+offy


	with other
	{
	    my_health -= other.dmg
	    sprite_index = spr_hurt
	    image_index = 0
	    motion_add(other.direction,3)
	}


	if alarm[0]>10
	alarm[0] = 10;
}