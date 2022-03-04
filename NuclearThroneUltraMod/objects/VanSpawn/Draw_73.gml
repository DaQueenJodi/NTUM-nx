/// @description Indicator
if RogueIDPD
	exit;
if (vertical)
{
	draw_sprite_ext(arrowSprite,-1,x,y,right,1,90,c_white,1);
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
else
{
	draw_sprite_ext(arrowSprite,-1,x,y,right,1,0,c_white,1);	
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