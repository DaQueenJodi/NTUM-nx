/// @description xxx
draw_sprite_ext(sprWazerStart,-1,x,y,1,image_yscale,image_angle,c_white,1);
draw_self();
draw_sprite_ext(sprWazerEnd,-1,
x+lengthdir_x(image_xscale,image_angle),
y+lengthdir_y(image_xscale,image_angle),1,image_yscale,image_angle,c_white,1);