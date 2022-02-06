/// @description Portal position indication for the player
var xx = x;
var yy = y;
var vx = camera_get_view_x(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var shouldDraw = false;
if xx >  vx + vw
{
	xx = vx + vw-5;
	shouldDraw = true;
}
else if xx < vx
{
	xx = vx+5;
	shouldDraw = true;
}
var vy = camera_get_view_y(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
if yy >  vy + vh
{
	yy = vy + vh-5;
	shouldDraw = true;
}
else if yy < vy
{
	yy = vy+5;
	shouldDraw = true;
}
if shouldDraw
{
if inverted
draw_sprite(sprPortalIndicator,2,xx,yy);
else if type = 1
draw_sprite(sprPortalIndicator,0,xx,yy);
else if type = 2
draw_sprite(sprPortalIndicator,1,xx,yy);
}