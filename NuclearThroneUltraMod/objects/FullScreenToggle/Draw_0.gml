draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)
if mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text(x+12,y,string_hash_to_newline("HOTKEY: F5"))
	if mouse_check_button_pressed(mb_left)
	{
		snd_play_2d(sndClick);
		if UberCont.opt_fulscrn = 0
			UberCont.opt_fulscrn = 1
		else
			UberCont.opt_fulscrn = 0

		window_set_fullscreen(UberCont.opt_fulscrn)
	}
}
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")))
y=round(__view_get( e__VW.YView, 0 )+80)


