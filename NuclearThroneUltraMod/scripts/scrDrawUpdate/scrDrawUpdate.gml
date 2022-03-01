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
	txt0 = @"#UPDATE 25 [0.20] (BETA)##
	* NEW INTRO SEQUENCE#
	* PALACE ADDED!#
	* NEW HUMPHRY ACTIVE#
	* NEW ATOM PASSIVE#
	* NEW MUTATIONS ALKALINE SALIVA#
	* NEW MUTATION GLASS ARM CANNON#
	* ONE EXTRA MUTATION CHOICE BY DEFAULT#
	* ADDED SEVERAL NEW GUNS#
	* NEW GAMEMODES#
	* SHEEP ACTIVE REWORK#
	* ELEMENTOR ACTIVE NOW COSTS AMMO#
	* GOLD WEAPONS EXCLUDED FROM 100%#
	* PRESS [SPACE] FOR PAGE 2"
	}
	else
	{
	txt0=@"
	* LABS TURRET ENEMY ADDED#
	* ADDED TWO CHEATCODES#
	* EAGLE EYES, EUPHORIA & EXTRA FEET BUFF#
	* BUSINESS HOG SHOP COST REBALANCE#
	* CHANGED SOME UNLOCK REQUIREMENTS#
	* NEW ATOM B SKIN & STEROIDS C SKIN#
	* SOME MORE ULTRA MUTATION ART#
	* CHANGED CROWN OF LIFE#
	* ADDED NEW CROWNS (CHOICE & DARKNESS)#
	* BIG HEALTH CHESTS CAN OVERHEAL#
	* JUNGLE & CURSED CAVES#
	* 3D SOUNDS#
	* NEW HARD ALTERNATE AREA 1 SAVANNA#
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
