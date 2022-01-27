leftang=point_direction(x,y,mouse_x,mouse_y)-60;
rightang=point_direction(x,y,mouse_x,mouse_y)+60;

if instance_exists(Player)
{

leftang=point_direction(x,y,mouse_x,mouse_y)-60*Player.accuracy;
rightang=point_direction(x,y,mouse_x,mouse_y)+60*Player.accuracy;

}
ang=choose(0,120);
left=false;

