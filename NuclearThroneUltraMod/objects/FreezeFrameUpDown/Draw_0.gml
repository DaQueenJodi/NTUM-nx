draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)
draw_set_halign(fa_left);
if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_freeze > 0
UberCont.opt_freeze -= 0.1
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_freeze < 4
UberCont.opt_freeze += 0.1
}

if UberCont.opt_freeze!=4
{
with Player
freezeframe400=false;
}
draw_set_valign(fa_top);

//jokes now
if UberCont.isPaused=0
{
if UberCont.opt_freeze=4
draw_text(x+20,y,string_hash_to_newline("0FPS"))
else if UberCont.opt_freeze>3
draw_text(x+20,y,string_hash_to_newline("JUST DON'T"))
else if UberCont.opt_freeze>2
draw_text(x+20,y,string_hash_to_newline("CHEATING"))
else if UberCont.opt_freeze >1
draw_text(x+20,y,string_hash_to_newline("U SURE?"))
else if UberCont.opt_freeze <0.1
draw_text(x+20,y,string_hash_to_newline("HATE THESE?"))
else if UberCont.opt_freeze <0.3
draw_text(x+20,y,string_hash_to_newline("I AGREE"))
}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")))
y=round(__view_get( e__VW.YView, 0 )+152)

