if alarm[4] > 0
{
	draw_sprite_ext(sprite_index,-1,x,y,1,right,image_angle,c_white,1)
}
else
{
	if gunangle <= 180
		draw_sprite_ext(sprVultureGun,-1,x+lengthdir_x(-wkick-3,gunangle),y+lengthdir_y(-wkick-3,gunangle),1,right,gunangle,c_white,1)
		draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)
	if gunangle > 180
		draw_sprite_ext(sprVultureGun,-1,x+lengthdir_x(-wkick-3,gunangle),y-3+lengthdir_y(-wkick-3,gunangle),1,right,gunangle,c_white,1)
}