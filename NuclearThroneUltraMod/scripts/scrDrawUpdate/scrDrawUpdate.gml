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
	* LOOP BOSSES!#
	* BIG VULTURE (SOUNDS BY LARJE100)#
	* INVERTED LOOP BOSSES#
	* NEW MUSIC#
	* BUFF POPO (STEROIDS IDPD)#
	* CUBE GUARDIAN#
	* EAGLE EYES NOW HAS AIM ASSIST#
	* HOMING AND PROJECTILE SPEED OVERHAUL#
	* HUNTER NOW HAS HIGHER ACCURACY#
	* REACHING LEVEL ULTRA EFFECTS#
	* FIXED SOME UNLOCKS#
	* BUFFED A TON OF WEAPONS#
	* PRESS [SPACE] FOR PAGE 2"
	}
	else
	{
	txt0=@"
	* MANY SOUND FIXES#
	* ROGUE ULTRAS ADDITIONAL EFFECTS#
	* WEP SMITH ULTRA D ADDITIONAL EFFECT#
	* MELTING ULTRA C ADDITIONAL EFFECT#
	* SUPER TOXIC CANNON, SUPER LANCE#
	* BUBBLER WEAPONS, SPINNER YOYO#
	* SLUG CANNON, ULTRA ROGUE RIFLE#
	* WAZER WEAPONS, INFESTER, ETC.#
	* WALL BREAK SFX & OTHER SFX#
	* SHOTGUN CLOSE RANGE DMG DURATION +#
	* SHOTGUN PROJECTILES NOW HAVE UNIQUE
	SPRITES TO SHOW SHORTRANGE DMG BUFF#
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
