scrDrawSpiral()
scrDrawHUD()

draw_set_font(fntM)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

text=" #";
var area = 0;
var subarea = 0;
var loops = 0;
var txt = "";
if instance_exists(Player)
{

if Player.kills>0 && kutgrap2==true
text = "MURDERS: "+string(Player.kills)+"#";
else if Player.kills>0
text = "KILLS: "+string(Player.kills)+"#";
else
text=" #";

text="DIFFICULTY: "+string(Player.hard)+"#"+text;


area = Player.area;
subarea = Player.subarea
loops = Player.loops;

var txt = string(area)+"_"+string(subarea)
var upsideDown = false;
if area == 10
{
	txt = "1B_"+string(subarea);
}
if area > 99
{
	txt = "???"
	switch (area)
	{
		case 105: //Inverted desert
			txt = "1_"+string(subarea);
			upsideDown = true;
		break;
		case 106: //Inverted scrapyard
			txt = "3_"+string(subarea);
			upsideDown = true;
		break;
		case 107: //Inverted frozen city
			txt = "5_"+string(subarea);
			upsideDown = true;
		break;
		case 108: //Inverted vulcano
			txt = "7_"+string(subarea);
			upsideDown = true;
		break;
		case 109: //Inverted wonderland
			txt = "8_"+string(subarea);
			upsideDown = true;
		break;
		case 110: //Inverted sewers
			txt = "2_"+string(subarea);
			upsideDown = true;
		break;
		case 111: //Inverted crystal caves
			txt = "4_"+string(subarea);
			upsideDown = true;
		break;
		case 112: //Inverted labs
			txt = "6_"+string(subarea);
			upsideDown = true;
		break;
	}
}
if loops>0
{
	txt="L"+string(loops)+" "+txt;
}
var yy = (__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)-6// + (string_height(text)*0.5);

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
//Area text
var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5
draw_set_valign(fa_middle)
if upsideDown
{
	draw_set_color(c_black)
	draw_text_transformed(xx,yy+1,string_hash_to_newline(txt),-1,-1,0)
	draw_text_transformed(xx+1,yy+1,string_hash_to_newline(txt),-1,-1,0)
	draw_text_transformed(xx+1,yy,string_hash_to_newline(txt),-1,-1,0)
	draw_set_color(c_white)
	draw_text_transformed(xx,yy,string_hash_to_newline(txt),-1,-1,0)
	draw_set_color(c_gray)
}
else
{
	draw_set_color(c_black)
	draw_text(xx,yy+1,string_hash_to_newline(txt))
	draw_text(xx+1,yy+1,string_hash_to_newline(txt))
	draw_text(xx+1,yy,string_hash_to_newline(txt))
	draw_set_color(c_white)
	draw_text(xx,yy,string_hash_to_newline(txt))
	draw_set_color(c_gray)
}


draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("######"+string_upper(tip)))
draw_set_valign(fa_top)

