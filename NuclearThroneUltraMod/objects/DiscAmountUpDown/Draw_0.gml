draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)


///pressing matters
if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_discs > 1
UberCont.opt_discs -= 1;
else
UberCont.opt_discs=100;
    
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_discs < 100
UberCont.opt_discs += 1
else
UberCont.opt_discs=1;
}
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_color(x+32,y,string_hash_to_newline(string(UberCont.opt_discs)),c_white,c_white,c_white,c_white,1);

draw_text_color(x-128,y,string_hash_to_newline("AMOUNT OF DISCS: "),c_white,c_white,c_white,c_white,1)
draw_set_valign(fa_bottom);

/*draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_freeze > 0
UberCont.opt_freeze -= 0.1
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_freeze < 4
UberCont.opt_freeze += 0.1
}

if UberCont.opt_freeze != 1
draw_text(x+20,y,"TWEAK IT!")


/* */
/*  */
