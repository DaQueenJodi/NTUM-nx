/// @description Draw
if (active)
{
	if sprite_index == spr_hurt
		draw_sprite(sprNothingBackHurt,image_index,x,y);
	else
		draw_sprite(sprNothingBack,0,x,y);
	draw_sprite(sprite_index,0,x,y);
	draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.6);
}
else
{
	draw_self();
	draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.6);
}
