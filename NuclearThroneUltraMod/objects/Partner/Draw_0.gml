//draw_sprite_ext(sprPartnerWeapon,image_index,x+lengthdir_x(-wkick,gunangle),y+lengthdir_y(-wkick,gunangle)+sin(image_index),1,right,gunangle,c_white,1)
if previousgunangle-20>gunangle{
previousgunangle-=20;}
else if previousgunangle+20<gunangle{
previousgunangle+=20;}
else{
previousgunangle=gunangle}


draw_sprite_ext(sprite_index,-1,x+lengthdir_x(wkick,previousgunangle),y+lengthdir_y(wkick,previousgunangle),1,1,previousgunangle,c_white,1)

