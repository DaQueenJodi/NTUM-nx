scrDrawSpiral()
scrDrawHUD()

draw_set_font(fntM)
draw_set_halign(fa_center)

text=" #";

if instance_exists(Player)
{

if Player.kills>0 && kutgrap2==true
text = "MURDERS: "+string(Player.kills)+"#";
else if Player.kills>0
text = "KILLS: "+string(Player.kills)+"#";
else
text=" #";

text="DIFFICULTY: "+string(Player.hard)+"#"+text;

if Player.loops>0
    {
    text=text+"L"+string(Player.loops)+" ";
    }

if Player.area > 99
text = text+"???";
else
text = text+string(Player.area)+"_"+string(Player.subarea);

}
draw_set_valign(fa_center)
draw_set_color(c_black)
if kutgrap
{

draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,string_hash_to_newline(string(text)+"##OBLITERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,string_hash_to_newline(string(text)+"##OBLITERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline(string(text)+"##OBLITERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline(string(text)+"##OBLITERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_set_color(c_gray)

}
else
{

draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,string_hash_to_newline(string(text)+"##GENERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,string_hash_to_newline(string(text)+"##GENERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline(string(text)+"##GENERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline(string(text)+"##GENERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip)))
draw_set_color(c_gray)

if Player.race=14&&Player.ultra_got[56]=0
{

draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/1.4,string_hash_to_newline("PRIMARY: "+string(Player.wep_name[Player.wep])) );

//draw_text(view_xview+view_wview/2,view_yview+view_hview/1.3,"SECONDARY: "+string(Player.wep_name[Player.bwep]) );

}

}
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("######"+string_upper(tip)))
draw_set_valign(fa_top)

