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
	txt0 = @"#UPDATE 26 [0.04]#
	* MASSIVE AREA PROGRESSION RESTRUCTURE
	* ALTERNATE PATHS B & C
	* SWAPPED LABS AND CAVES
	* COMBINED SOME ULTRA MODS
	* NEW ULTRA MODS
	* NEW SECRET AREA
	* TWO NEW BOSSES
	WITH ONE INVERTED VERSION
	* INVERTED PALACE
	* LOTS OF SECRET EXITS
	* NEW FIREBAT SPRITE
	* FIRE WORM
	* SQUARE BAT
	* JELLYFISH
	* SCUBA BANDIT
	* YV ULTRA D AUTO POP POP!
	* MORE PERCENTAGES MUT DESCRIPTIONS
	* EASIER OASIS/SAVANNA ACCESS ON LOOP
	* EAGLE EYES HUD IS NOW DEFAULT
	* EAGLE EYES HOMING BUFF
	* NEW ULTRA MUTATION ART BY
	skurleton & ricottakitten
	* HARDER CRYSTAL CAVES
	* EASIER LABS
	* BOILING VEINS WORKS VS BLUE FIRE
	* PRESS [SPACE] FOR PAGE 2"
	}
	else
	{
	txt0=@"
	* NEW WEAPONS
	* CHUNKY BLADE GUN
	* REDIRECTOR
	* ULTRA BLOOD RIFLE
	* ULTRA TOXIC THROWER
	* BOX GUNS
	* EFFICIENT HEAVY SLUGGER
	* LOVE BUBBLER
	* THE PENETRATOR
	* AUTO PENETRATOR
	* GAMMA GUTS DMG REDUCTION CONTACT DMG
	* EXTR FEET + ROLL
	* LASTWISH REFILLS ARMOUR&PORTALSTRIKE
	* REFUND LIFE FROM LASTWISH IN JUNGLE
	* LOW AMMO/HP HUD
	* EUPHORIA NOW EFFECTS LASERS
	* ENEMY LOOPS SPAWNS (OASIS, INVERTED ETC.)
	* NEW CHESIRE CAT WAZER ATTACK
	* RAVENS SHOULD FLY LESS
	* MORE CONSISTENT LAST ENEMY INDICATOR
	* NEW SIDE-ART
	* NEW CROSSHAIRS
	* YV/CUZ CRIB FIXES
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
