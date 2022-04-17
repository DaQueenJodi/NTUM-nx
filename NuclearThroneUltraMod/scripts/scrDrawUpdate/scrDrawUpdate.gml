function scrDrawUpdate() {

	//DRAW UPDATE

	if widescreen > 0
	widescreen -= 8
	if keyboard_check_pressed(vk_space)
	{
	if updatepage=0
	updatepage=1;
	else
	updatepage=0;
	}

	if updatepage=0
	{
	txt0 = @"#UPDATE 26 [BETA 0.11]##
	* MASSIVE AREA PROGRESSION RESTRUCTURE#
	* COMBINED SOME ULTRA MODS#
	* NEW ULTRA MODS#
	* NEW SECRET AREA#
	* TWO NEW BOSSES#
	WITH ONE INVERTED VERSION#
	* ULTRA LANCE#
	* CHUNKY BLADE GUN#
	* REDIRECTOR#
	* ULTRA BLOOD RIFLE#
	* ULTRA TOXIC THROWER#
	* PRESS [SPACE] FOR PAGE 2"
	}
	else
	{
	txt0=@"
	* PLASMA REFACTOR#
	* BLOOD EXPLOSION REFACTOR#
	* FIXED SOME MELEE WEPS DEALING 2X DMG#
	* INVERTED PALACE#
	* BOX GUNS
	* EFFICIENT HEAVY SLUGGER
	* LOVE BUBBLER
	* THANKS FOR TESTING YO#
	* LOTS OF BALANCE AND BUGFIXES#
	MORE INFO ON DISCORD/TWITTER @ERDEPPOL#
	* PRESS [SPACE] FOR PAGE 1";
	}

	stxt0 = txt0


	draw_set_font(fntM)
	draw_set_valign(fa_top)
	draw_set_halign(fa_center)


	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt0)))




}
