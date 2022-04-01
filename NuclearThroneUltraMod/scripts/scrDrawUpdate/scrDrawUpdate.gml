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
	txt0 = @"#UPDATE 25 [0.01] (BETA)##
	NO SPOILERS IN THIS LIST#
	* HYPER CRYSTAL!#
	* INVERTED HYPER CRYSTAL#
	* CURSED HYPER CRYSTAL#
	* BUBBLER WEAPONS#
	* SPINNER YOYO WEAPONS#
	* WAZER WEAPONS#
	* HEAVY BLOOD WEAPONS#
	* ULTRA ROGUE RIFLE#
	* ICONS FOR PICKUPS#
	* EXPLAIN TEXT IN HUD#
	* HOMING OVERHAUL#
	* PRESS [SPACE] FOR PAGE 2"
	}
	else
	{
	txt0=@"
	* MANY SOUND FIXES#
	* EAGLE EYES NOW HAS AIM ASSIST#
	* SUPER LANCE#
	* SUPER TOXIC CANNON#
	* MELTING ULTRA C ADDITIONAL EFFECT#
	* FIXED UNLOCKS#
	* ROGUE ULTRAS ADDITIONAL EFFECTS#
	* BUFF POPO (STEROIDS IDPD)#
	* WALL BREAK SFX#
	* SHOTGUN CLOSE RANGE DMG DURATION +#
	* WEP SMITH ULTRA D ADDITIONAL EFFECT#
	* NEW MUSIC#
	* LOTS OF BALANCE AND BUGFIXES#
	PLEASE KEEP ALL THIS A SECRET <3#
	* PRESS [SPACE] FOR PAGE 1";
	//MORE INFO ON DISCORD/TWITTER @ERDEPPOL#
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
