/// @description Update
if owner > 0  && !ending {
	if owner.wep != mywep
		event_perform(ev_alarm,0);
	image_angle = point_direction(owner.x,owner.y,mouse_x,mouse_y);
	x = owner.x + lengthdir_x(offset,image_angle);
	y = owner.y + lengthdir_y(offset,image_angle);
	var hit = collision_line_point(x,y,
	x+lengthdir_x(300,image_angle),
	y+lengthdir_y(300,image_angle),
	Wall,false,true);
	
	BackCont.viewx2 = BackCont.viewx + lengthdir_x(camKick,image_angle+180)*UberCont.opt_shake
	BackCont.viewy2 = BackCont.viewy + lengthdir_y(camKick,image_angle+180)*UberCont.opt_shake
	BackCont.shake = max(BackCont.shake,camShake);
	owner.wkick = wkick;
	
	if hit[0] != noone
	{
		image_xscale = point_distance(x,y,hit[1],hit[2]);	
	}
}