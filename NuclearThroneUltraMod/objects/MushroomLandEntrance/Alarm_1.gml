/// @description Smoker
alarm[1] = 100+irandom(60);
repeat(irandom_range(1,3))
	with instance_create(x+(10*image_xscale),y+2,Smoke)
		vspeed --;
