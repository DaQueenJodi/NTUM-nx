/// @description Colourrrr
__background_set_colour(colour)
hue += spd;
colour = make_color_hsv(hue,250,250);
if hue >= 360
	hue = 1;
if instance_exists(Player)
{
	spd += 0.01;
}