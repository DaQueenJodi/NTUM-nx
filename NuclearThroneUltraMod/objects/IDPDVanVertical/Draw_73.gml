/// @description Vertical indicator
if meleedamage > 0
{
	var vy = camera_get_view_y(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	var yy = y;
	var yScale = 1;
	if y < vy
	{
		yy = vy;
		yScale = -1;
		draw_sprite_ext(sprVanIndicator,0,x,yy,1,yScale,90,c_white,1);
	}
	else if y > vy+vh
	{
		yy = vy+vh;
		draw_sprite_ext(sprVanIndicator,0,x,yy,1,yScale,270,c_white,1);
	}
}