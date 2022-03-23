/// @description Tell
if alarm[5] > 0
{
	var stp = 16;
	var a = 256/stp;
	var xx = x;
	var yy = y;
	repeat(a)
	{
		xx = xx+lengthdir_x(stp,chargeDirection);
		yy = yy+lengthdir_y(stp,chargeDirection);
		draw_sprite_ext(sprBigVultureChargeIndicator,0,xx,yy,1,1,chargeDirection,c_white,1);
	}
}