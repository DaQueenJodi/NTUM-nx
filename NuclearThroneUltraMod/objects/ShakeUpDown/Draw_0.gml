draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_shake > 0
UberCont.opt_shake -= 0.1
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_shake < 4
UberCont.opt_shake += 0.1
}

if UberCont.opt_freeze!=4
{
with Player
screenshake400=false;
}
draw_set_valign(fa_top);
//jokes now
if UberCont.paused=0
{
if UberCont.opt_shake=4
draw_text(x+20,y,string_hash_to_newline("WHAT!!!"))
else if UberCont.opt_shake>3
draw_text(x+20,y,string_hash_to_newline("U GOT GUTS"))
else if UberCont.opt_shake>2
draw_text(x+20,y,string_hash_to_newline("KEEP GOING"))
else if UberCont.opt_shake >1.1
draw_text(x+20,y,string_hash_to_newline("GO AHEAD"))
else if UberCont.opt_shake == 1
draw_text(x+20,y,string_hash_to_newline("VLAMBEER STYLE"))
else if UberCont.opt_shake =0.3
draw_text(x+20,y,string_hash_to_newline("HEY!"))
else if UberCont.opt_shake =0.2
draw_text(x+20,y,string_hash_to_newline("STOP!"))
else if UberCont.opt_shake =0.1
draw_text(x+20,y,string_hash_to_newline("NO!"))
else if UberCont.opt_shake =0.0
draw_text(x+20,y,string_hash_to_newline("OKE FINE"))
else if UberCont.opt_shake <0.4
draw_text(x+20,y,string_hash_to_newline("CAN'T HANDLE"))
}


x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%"))
y=__view_get( e__VW.YView, 0 )+144

