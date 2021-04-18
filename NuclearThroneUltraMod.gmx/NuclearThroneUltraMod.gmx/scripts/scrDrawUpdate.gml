
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
txt0 = "#UPDATE 24 [0.10] (BETA)##
* NERFED BIG ASSASSIN#
* TERMITE GUN#
* BLACK ENEMY BULLETS DEAL LESS DMG#
* ALMOST DOUBLED EUPHORIA IFRAMES#
* BUFFED SHEEP ULTRA A#
* INCREASED ROGUE EXPLOSION DMG##

* PRESS [SPACE] FOR PAGE 2"
}
else
{
txt0="MORE INFO ON DISCORD

* PRESS [SPACE] FOR PAGE 1";
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

