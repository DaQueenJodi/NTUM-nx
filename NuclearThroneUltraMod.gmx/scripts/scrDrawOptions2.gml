//DRAW OPTIONS2

if widescreen > 0
widescreen -= 8
var up;
var down;
var left;
var right;
var swap;
var gamemodename;

var bossintro;

up=scrAsciiChar(UberCont.opt_up);
down=scrAsciiChar(UberCont.opt_down);
left=scrAsciiChar(UberCont.opt_left);
right=scrAsciiChar(UberCont.opt_right);
swap=scrAsciiChar(UberCont.opt_swap);
pickup=scrAsciiChar(UberCont.opt_pickup);

scrGameModes();

if instance_exists(GameModeUpDown)
gamemodename=string(gamemode[GameModeUpDown.gamemodenr]);
else
gamemodename=string(gamemode[UberCont.opt_gamemode]);
/*if UberCont.opt_gamemode = 0{
gamemode="NORMAL"}
else if UberCont.opt_gamemode = 1 {gamemode="ONE WEAPON ONLY"}
else if UberCont.opt_gamemode = 2 {gamemode="FAVOURABLE BUILD"}
else {gamemode="NO HUD"}*/


txt0 = "#OPTIONS2#CLICK WITH LMB ON SQUARE THEN PRESS KEY#########################PRESS [RIGHT CLICK] TO RETURN"
txt1 = "####CUSTOMIZE CONTROLS#UP#DOWN#LEFT#RIGHT#SWAP WEAPONS#PICKUP##GAMEMODE########"
txt2 = "#####"+up+"#"+down+"#"+left
+"#"+right+"#"+swap+"#"+pickup+"####"+string(gamemodename)+"######";

stxt0 = "#OPTIONS2"
stxt1 = "####CUSTOMIZE CONTROLS##### ####### #### ####"
stxt2 = txt2


with KeyUp
event_perform(ev_draw,0)
with KeyDown
event_perform(ev_draw,0)
with KeyLeft
event_perform(ev_draw,0)
with KeyRight
event_perform(ev_draw,0)
with KeySwap
event_perform(ev_draw,0)
with KeyPickup
event_perform(ev_draw,0)
with KeyReset
event_perform(ev_draw,0)

//with DiscAmountUpDown
//event_perform(ev_draw,0)

//with DiscDamageUpDown
//event_perform(ev_draw,0)
//with GameModeUpDown
//event_perform(ev_draw,0)

//with StartingWeaponUpDown
//event_perform(ev_draw,0)

//with WeaponDisplay
//event_perform(ev_draw,0)



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

draw_set_halign(fa_right)
draw_set_color(c_black)
draw_text(view_xview+view_wview/2-8,view_yview+1,string(txt1))
draw_text(view_xview+view_wview/2-7,view_yview+1,string(txt1))
draw_text(view_xview+view_wview/2-7,view_yview,string(txt1))
draw_set_color(c_gray)
draw_text(view_xview+view_wview/2-8,view_yview,string(txt1))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2-8,view_yview,string(stxt1))

draw_set_halign(fa_left)

draw_set_color(c_black)
draw_text(view_xview+view_wview/2+8,view_yview+1,string(txt2))
draw_text(view_xview+view_wview/2+9,view_yview+1,string(txt2))
draw_text(view_xview+view_wview/2+9,view_yview,string(txt2))
draw_set_color(c_gray)
draw_text(view_xview+view_wview/2+8,view_yview,string(txt2))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2+8,view_yview,string(stxt2))

if instance_exists(StartingWeaponUpDown)
{
//scrWeapons();
with StartingWeaponUpDown{
draw_sprite(wep_sprt[StartingWeaponUpDown.wep],0,x,y+32);
if wep=0
{draw_text_color(x,y+16,"RANDOM",c_white,c_white,c_white,c_white,1);}
else
draw_text_color(x,y+16,string(StartingWeaponUpDown.wep),c_white,c_white,c_white,c_white,1);

draw_text_color(x-string_width(string(StartingWeaponUpDown.wep_name[wep]))*0.5,y+16,"####"+string(StartingWeaponUpDown.wep_name[wep]),c_white,c_white,c_white,c_white,1);
UberCont.opt_gm1wep=wep;
}
}
