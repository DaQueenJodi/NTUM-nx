draw_sprite(sprite_index,UberCont.opt_dmgindicator,x,y)

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_dmgindicator = 0
UberCont.opt_dmgindicator = 1
else
UberCont.opt_dmgindicator = 0

}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")))
y=round(__view_get( e__VW.YView, 0 )+96+8)
