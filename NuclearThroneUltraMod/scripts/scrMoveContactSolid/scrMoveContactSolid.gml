function scrMoveContactSolid(argument0, argument1) {
	ang = argument0;
	//argument1 is max distance
	speed=0;
	direction=point_direction(x,y,mouse_x,mouse_y)

	//move_contact_solid(ang,20)//44
	var distancetravel=0;
	do{
	x+=lengthdir_x(2,ang);
	y+=lengthdir_y(2,ang);
	distancetravel+=2;
	}
	until(x=xprevious||y=yprevious||!place_free(x+lengthdir_x(2,ang),y+lengthdir_y(2,ang)) || place_meeting(x+lengthdir_x(2,ang),y+lengthdir_y(2,ang),Wall)||!place_meeting(x+lengthdir_x(2,ang),y+lengthdir_y(2,ang),Floor) ||distancetravel>argument1)



}
