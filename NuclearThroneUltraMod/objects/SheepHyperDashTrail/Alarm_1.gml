/// @description Fade out
image_alpha -= 0.2;
if image_alpha < 0.1
	instance_destroy();
	
	alarm[1] = 1;