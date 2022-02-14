if mouse_x > x and mouse_x < x+24 and mouse_y > y and mouse_y < y+24 and selected = 0 && hasNoMenuOpen()
{
	scrollY = 0;
	selected = 1
with option2
instance_destroy();
with option
instance_destroy();
}
else
alarm[0] = 2;

