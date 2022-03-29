if sprite_index == spr_hurt
	draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,1)
else if spr_idle != spr_normal
	draw_sprite_ext(sprite_index,imageIndex,x,y,1,1,0,c_white,1);
else
	draw_sprite_ext(sprite_index,-1,x,y,1,1,0,c_white,1)