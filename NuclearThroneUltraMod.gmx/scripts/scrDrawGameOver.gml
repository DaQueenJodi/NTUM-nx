
//GAME OVER

draw_set_font(fntM)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
gameover = "YOU DID NOT REACH THE NUCLEAR THRONE##KILLS: "+string(BackCont.kills)+"#LEVEL: "+string(BackCont.area)+"_"+string(BackCont.subarea)+"#DIFFICULTY: "+string(BackCont.hard)
if BackCont.loops > 0
gameover += "#LOOPS: "+string(BackCont.loops)
if UberCont.opt_shake != 1
gameover += "##PLAYING WITH "+string(round(UberCont.opt_shake*100))+"% SCREENSHAKE"
if UberCont.opt_freeze != 1
gameover += "##PLAYING WITH "+string(round(UberCont.opt_freeze*100))+"% FREEZEFRAMES"

/*if UberCont.opt_gamemode = 0{
gamemode="NORMAL"}
else if UberCont.opt_gamemode = 1 {gamemode="ONE WEAPON ONLY"}//if we add gamemodes we have to change this in wep pickup&ubercont&scrdrawchar&Gameoverscreen
else if UberCont.opt_gamemode = 2 {gamemode="FAVOURABLE BUILD"}
else {gamemode="NO HUD"}*/

if UberCont.public = 0
gameover += "##MODDED EARLY ACCESS DEVOPMENT BUILD"
if UberCont.public = 1
gameover += "##MODDED EARLY ACCESS BUILD#20.3";

gameover += "##GAME MODE : "+UberCont.gamemode[UberCont.opt_gamemode];
if gameovertime > 30 gameover += "##[R] QUICK RESTART#[LEFT CLICK] MENU"


if (keyboard_check_pressed(ord("R")) or KeyCont.key_back[0] = 1) and gameovertime > 25
{//QUICK RESTART
snd_play(sndMutant0Cnfm)
race = UberCont.racepick
crown = 1
with all
{
if id != UberCont.id and persistent = true
{
persistent = false
instance_destroy()
}
}
scrRaces()
scrCrowns()
if race = 0
{do race = ceil(random(racemax)) until race_have[race] = 1}
if crown = 0
crown = ceil(random(crownmax))
with instance_create(x,y,GenCont)
{race = other.race
crown = other.crown}
instance_create(x,y,Player)
with MusCont
instance_destroy()
instance_create(0,0,MusCont)
room_restart()
exit;
}
if (keyboard_check_pressed(vk_enter) or KeyCont.key_fire[0] = 1 or mouse_check_button_pressed(mb_left)) and gameovertime > 25
{
//BACK TO MENU
snd_play(sndRestart)
scrRestart()
}
if gameovertime > 20
{
draw_set_color(c_black)
draw_set_alpha(0.4)
draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+view_hview,0)
draw_set_alpha(1)
draw_text(view_xview+view_wview/2,view_yview+view_hview/2-string_height("A")+1,string(gameover))
draw_text(view_xview+view_wview/2+1,view_yview+view_hview/2-string_height("A")+1,string(gameover))
draw_text(view_xview+view_wview/2+1,view_yview+view_hview/2-string_height("A"),string(gameover))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2,view_yview+view_hview/2-string_height("A"),string(gameover))
draw_set_valign(fa_top)
}
