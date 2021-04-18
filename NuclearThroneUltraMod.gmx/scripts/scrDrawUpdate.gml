
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
txt0 = "#UPDATE 20.0#

*FIXED WONKY COLLISIONS!#
*BUFFED DISPERSE WEAPONS#
*DOUBLED THE AMOUNT OF BOSSES#
*BUFFED KRAKEN MOD A LITTLE#
*MADE HORROR (no new ultras yet)#
*BUFFED SHOTGUN MOD A LITTLE#
*HORROR HAS BEEN ADDED!#
*HUNTERS THRONEBUTT WORK BETTER#
*INVERTED SALAMANDERS#
*NEW DASH SPRITE BIG BANDIT#
*REDUCDED BIG FISH MELEE DMG#
*GAMEPAD AIM ASSIST#
*PRESS [SPACE] FOR PAGE 2"
}
else
{
txt0="#UPDATE 20.0#

*LILL HUNTER HAS MORE HP#
*ANGEL HIT SFX#
*-ELITE INSPECTOR MIND CONTROL STRENGTH#
*REDUCED VAN HP#
*THREE NEW GAMEMODES! AND 1 NEW WEPMOD#
*NO MORE INFINTE IDPD ON LOOP#
*DRAGON AND CHESIRE CAT DROP LESS ITEMS#
*FIXED ULTRA WEPS ON Y.C. & Y.V.#
*BHOG THRONEBUTT NOW IS 25% DISCOUNT#
*BHOG SHOPTHINGS DONT COST > MAXRAD#
*HUGE CHANCES TO LOOP 2#
*INCREASED FIRE RATE INFUSER#
*CRYSTAL CAVES NOW HAS FIREBATS :{D#
*VANS NOW ALSO SPAWN NON ELITE POPO#
*FULL LIST ON REDDIT";
}

stxt0 = txt0


draw_set_font(fntM)
draw_set_valign(fa_top)
draw_set_halign(fa_center)


draw_set_color(c_black)
draw_text(view_xview+view_wview/2,view_yview+1,string(txt0))
draw_text(view_xview+view_wview/2+1,view_yview+1,string(txt0))
draw_text(view_xview+view_wview/2+1,view_yview,string(txt0))
draw_set_color(c_gray)
draw_text(view_xview+view_wview/2,view_yview,string(txt0))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2,view_yview,string(stxt0))

