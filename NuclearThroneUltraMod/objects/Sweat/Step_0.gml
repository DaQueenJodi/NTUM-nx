/// @description xxx
image_angle = direction;
vspeed+= 0.3;//Gravity

if alarm[0] < 1
{
	image_alpha -= 0.1;
}

image_xscale = max(1,speed*0.5);

if image_alpha < 0.2
instance_destroy();