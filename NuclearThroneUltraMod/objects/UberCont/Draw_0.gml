if paused = 1
{

var text;
//text="You are dead"
//if instance_exists(Player)
//{
text = string(area)+"_"+string(subarea)
if area > 99
text = "???"

    if loops>0
    {
    text="L"+string(loops)+" "+text;
    }

//}
draw_sprite_ext(pauseimg,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,1)//0.35,
draw_set_color(c_black)
draw_set_blend_mode(bm_normal)
draw_set_alpha(0.6)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_set_alpha(1)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+48,0)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-48,0)
/*draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(view_xview+view_wview/2+1,view_yview+26,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
draw_text(view_xview+view_wview/2+1,view_yview+27,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
draw_text(view_xview+view_wview/2,view_yview+27,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
draw_set_color(c_white)
draw_text(view_xview+view_wview/2,view_yview+26,"GAME PAUSED##[ENTER] MAIN MENU [LEFT CLICK] RESUME#[R] QUICK RESTART [Q] QUIT#"+string(text)+"#GAMEMODE : "+string(gamemode) )
*/
//OPTIONS

//DRAW OPTIONS

if UberCont.opt_bossintro=1
bossintro="ON"
else
bossintro="OFF"

if UberCont.opt_timer=1
timer="ON"
else
timer="OFF"

/*if instance_exists(Player)
{
var infotxt
if Player.loops>0
    {
    infotxt="L"+string(Player.loops)+" ";
    }

if Player.area > 99
infotxt = infotxt+"???";
else
infotxt = infotxt+string(Player.area)+"_"+string(Player.subarea);


txt0 = "#OPTIONS#KILLS: "+string(Player.kills)+"  "+infotxt+"#########################PRESS [RIGHT CLICK] TO RETURN"

}
else
{

var infotxt
if BackCont.loops>0
    {
    infotxt="L"+string(BackCont.loops)+" ";
    }

if BackCont.area > 99
infotxt = infotxt+"???";
else
infotxt = infotxt+string(BackCont.area)+"_"+string(BackCont.subarea);


txt0 = "#OPTIONS#KILLS: "+string(BackCont.kills)+"  "+infotxt+"#########################PRESS [RIGHT CLICK] TO RETURN"


}*/
var infotxt="";

if loops>0
    {
    infotxt="L"+string(loops)+" ";
    }

if area > 99
infotxt = infotxt+"???";
else
infotxt = infotxt+string(area)+"_"+string(subarea);


txt0 = "#OPTIONS#KILLS: "+string(kills)+"  "+infotxt+"#########################PRESS [RIGHT CLICK] TO RETURN#PRESS [ENTER] FOR MAIN MENU"



txt1 = "####AUDIO#MUSIC VOLUME#MASTER VOLUME#AMBIENT VOLUME##VISUALS#FULL SCREEN#CROSSHAIR#BLOOM#SHADOWS#HIGH QUALITY##CONTROLS#GAMEPAD#GAMEPAD AUTOAIM##OTHER#SCREEN SHAKE#FREEZE FRAMES#LOADING SPEED#CAPTURE MOUSE#BOSS INTROS#TIMER"
txt2 = "#####"+string(scrAddZero(round(UberCont.opt_musvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_sfxvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_ambvol*100),2))
+"%###"+string(scrOnOff(UberCont.opt_fulscrn))+"#"+string(UberCont.opt_crosshair+1)+"#"+string(round(UberCont.opt_bloom*1000))+"%#"+string(scrOnOff(UberCont.opt_shadow))+"#"//
+string(scrOnOff(UberCont.opt_highquality))+"###"+"AUTO ACTIVE#"+"AUTO ACTIVE"
+"###"+string(scrAddZero(round(UberCont.opt_shake*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_freeze*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_loading*100),2))+"%#"+string(scrOnOff(UberCont.opt_mousecp))+"#"+string(bossintro)+"#"+string(timer)




stxt0 = "#OPTIONS"
stxt1 = "####AUDIO#####VISUALS#######CONTROLS####OTHER####"
stxt2 = txt2


with MusVolSlider
event_perform(ev_draw,0)
with SfxVolSlider
event_perform(ev_draw,0)
with AmbVolSlider
event_perform(ev_draw,0)

with FullScreenToggle
event_perform(ev_draw,0)
with CursorUpDown
event_perform(ev_draw,0)
with BloomUpDown
event_perform(ev_draw,0)
with ShadowToggle
event_perform(ev_draw,0)
with HighQualityToggle
event_perform(ev_draw,0)
//with GamePadToggle
//event_perform(ev_draw,0)
//with AutoAimUpDown
//event_perform(ev_draw,0)

with ShakeUpDown
event_perform(ev_draw,0)
with MouseCPToggle
event_perform(ev_draw,0)
with FreezeFrameUpDown
event_perform(ev_draw,0)
with LoadingScreenSpeedUpDown
event_perform(ev_draw,0)
with BossIntroToggle
event_perform(ev_draw,0)
with TimerToggle
event_perform(ev_draw,0)


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


draw_set_halign(fa_right)
draw_set_color(c_black)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
draw_set_color(c_gray)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt1)))

draw_set_halign(fa_left)

draw_set_color(c_black)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
draw_set_color(c_gray)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt2)))

/////ALLRIGHT THATS OPTIONS

}

if alarm[1]>0
draw_sprite_ext(pauseimg,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,1)

/* */
/*  */
