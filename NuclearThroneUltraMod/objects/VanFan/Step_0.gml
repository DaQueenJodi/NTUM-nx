/// @description xxx
__background_set_colour(colour)
hue += spd;
colour = make_color_hsv(hue,100,100);

if hue >= 360
hue = 1;
spd += 0.01;