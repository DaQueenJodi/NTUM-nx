/// @description Lava bubbles
with instance_create(x+16+random_range(-8,8),y+16+random_range(-6,6),LavaBubble)
{
	depth = TopCont.depth - 1;	
}
alarm[1] = 15 + irandom(50);
