draw_sprite(sprite_index,UberCont.opt_sideart,x,y)
//draw_sprite(sprite_index,UberCont.opt_gamemode,x,y)
//draw_self();
if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_sideart > 0
UberCont.opt_sideart -= 1
else
UberCont.opt_sideart = 8

}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_sideart < 8
UberCont.opt_sideart += 1
else
UberCont.opt_sideart = 0;
}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("0")))
y=round(__view_get( e__VW.YView, 0 )+88)