draw_sprite(sprite_index,UberCont.opt_loading,x,y)//opt_fulscrn

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_loading > 0.5
UberCont.opt_loading -= 0.1
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_loading < 4
UberCont.opt_loading += 0.1
}

draw_set_valign(fa_top);
if UberCont.opt_loading>3.7
draw_text(x+20,y,string_hash_to_newline("DON'T FORGET#ABOUT TIPS?"))

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")))
y=round(__view_get( e__VW.YView, 0 )+182)


