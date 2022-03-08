event_inherited();
leftang=point_direction(x,y,mouse_x,mouse_y)-40;
rightang=point_direction(x,y,mouse_x,mouse_y)+40;

if instance_exists(Player)
{

leftang=point_direction(x,y,mouse_x,mouse_y)-40*Player.accuracy;
rightang=point_direction(x,y,mouse_x,mouse_y)+40*Player.accuracy;

}
ang=choose(0,80);
left=false;

angleStep = 10;