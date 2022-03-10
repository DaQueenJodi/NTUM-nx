/// @description rotate and alpha
image_angle += rot;
if alarm[0] > 3
	image_alpha = max(0.4,image_alpha + 0.2);
else
{
	image_alpha = max(0.4,image_alpha - 0.2);
}