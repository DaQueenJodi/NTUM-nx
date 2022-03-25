/// @description shrink end
alarm[1] = 1;

image_yscale -= 0.3;
if image_yscale < 0
	instance_destroy();