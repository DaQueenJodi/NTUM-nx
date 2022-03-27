function scrMoveContactSolid(ang, mdis) {
	var sx = x;
	var sy = y;
	do {
		x += lengthdir_x(1,ang);
		y += lengthdir_y(1,ang);
	}
	until(point_distance(x,y,sx,sy) > mdis || 
		place_meeting(x+lengthdir_x(4,ang),y+lengthdir_y(4,ang),Wall) 
	)
	
	return point_distance(x,y,sx,sy) < mdis;
}
