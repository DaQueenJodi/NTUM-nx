/// @description Hunter crackshot
with Marker
{
	if MarkerNr == other.crackshotsfired-1
	{
	    var mox,moy;
	    var len,dir;
	    if UberCont.opt_fulscrn = 1
			len = point_distance(Player.x,Player.y,target.x,target.y)*4
	    else
		{
			len = point_distance(Player.x,Player.y,target.x,target.y)
			len *= (window_get_height())*0.004;
	    }
            
	    dir = point_direction(Player.x,Player.y,target.x,target.y);
            
	    mox = (window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
	    moy = (window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);
            
	    if mox > window_get_x()+window_get_width()
			mox = window_get_x()+window_get_width()-8;
	    if mox < window_get_x()
			mox = window_get_x()+8;
	    if moy > window_get_y()+window_get_height()
			moy = window_get_y()+window_get_height()-8;
	    if moy < window_get_y()
			moy = window_get_y()+8;
            
	    display_mouse_set(mox,moy);
	}
}

scrFire();     

crackshotsfired--;

if crackshotsfired>0
{
	alarm[11] = 1;
} else
{
	var ox = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5);
	var oy = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.5);
	if UberCont.opt_fulscrn=1
	{
		len=point_distance(ox,oy,ogmx,ogmy)*4
	}
	else
	{
		len=point_distance(ox,oy,ogmx,ogmy)
		len*=(window_get_height())*0.0038;
	}
	dir=point_direction(ox,oy,ogmx,ogmy);
	var mox=(window_get_x()+window_get_width()*0.5)+lengthdir_x(len,dir);
	var moy=(window_get_y()+window_get_height()*0.5)+lengthdir_y(len,dir);
	display_mouse_set(mox,moy);	
}



