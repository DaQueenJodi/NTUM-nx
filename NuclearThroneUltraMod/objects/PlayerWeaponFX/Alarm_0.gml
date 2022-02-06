/// @description Curse & gold fx
with Player
{
	other.x = x;
	other.y = y;
	//cursed weps
	if curse = 1 and random(3) < 1
	{

	instance_create(x+lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y))+random(6)-3,
	y+lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y))+random(6)-3,Curse)

	}

	//golden weps
	if random(5)<1 &&scrCheckGold(wep)
	{
	with instance_create(x+lengthdir_x(10,point_direction(x,y,mouse_x,mouse_y))+random(6)-3,
	y+lengthdir_y(10,point_direction(x,y,mouse_x,mouse_y))+random(6)-3,CaveSparkle){
	image_angle=random(360);
	depth=-8}
	}
}
alarm[0] = checkDelay;