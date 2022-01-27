draw_sprite(sprite_index,image_index,x,y)

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
io_clear();
alarm[0]=20;
image_index=1;

//UberCont.opt_up=keyboard_key;
}

