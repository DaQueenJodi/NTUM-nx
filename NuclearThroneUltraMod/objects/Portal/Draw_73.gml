/// @description Portal position indication for the player
if !(x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )) && instance_exists(Player)
{//Am I within the view of the playa

var xx=x;
var yy=y;
var dir = point_direction(x,y,Player.x,Player.y);
do
{

xx += lengthdir_x(1,dir);
yy += lengthdir_y(1,dir);

}
until((xx > __view_get( e__VW.XView, 0 )+6 and xx < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-6 and yy > __view_get( e__VW.YView, 0 )+6 and yy < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-6) || point_distance(x,y,xx,yy) > point_distance(x,y,Player.x,Player.y))
round(xx)
round(yy)
if inverted
draw_sprite(sprPortalIndicator,2,xx,yy);
else if type = 1
draw_sprite(sprPortalIndicator,0,xx,yy);
else if type = 2
draw_sprite(sprPortalIndicator,1,xx,yy);

}

