/// @description Horizontal Indicator
if meleedamage > 0
{
	var vx = camera_get_view_x(view_camera[0]);
	var vw = camera_get_view_width(view_camera[0]);
	var xx = x;
	var xScale = 1;
	if x < vx
	{
		xx = vx;
		xScale = -1;
		draw_sprite_ext(sprVanIndicator,0,xx,y,xScale,1,0,c_white,1);
	}
	else if x > vx+vw
	{
		xx = vx+vw;
		draw_sprite_ext(sprVanIndicator,0,xx,y,xScale,1,0,c_white,1);
	}
}
