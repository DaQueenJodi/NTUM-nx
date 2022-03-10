draw_sprite(sprite_index,image_index,x,y);

var txt;
txt="RESET KEYS";
draw_text_colour(x-string_width(string_hash_to_newline(txt))*0.5,y-16,string_hash_to_newline(txt),c_white,c_white,c_white,c_white,1);

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
	snd_play_2d(sndClick);
UberCont.opt_up=87//W
UberCont.opt_down=83//S
UberCont.opt_left=65//A
UberCont.opt_right=68//D
UberCont.opt_swap=81//Q
UberCont.opt_pickup=69//E
}

