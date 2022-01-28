/// @description Timer
microseconds=string(time_microseconds)
if time_microseconds<10
{microseconds="0"+string(time_microseconds);}

secondsstring=string(time_seconds)
if time_seconds<10
{secondsstring="0"+string(time_seconds);}

minutesstring=string(time_minutes)
if time_minutes<10
{minutesstring="0"+string(time_minutes);}

txttime = string(time_hours)+":"+minutesstring+":"+secondsstring+":"+microseconds;
if !instance_exists(Menu)&&!instance_exists(Vlambeer) && !instance_exists(UnlockPopup) && opt_timer=1
{

draw_set_halign(fa_center)

draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline("000:00:00:00"))*0.5,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline(txttime)),string_hash_to_newline(txttime),c_black
,c_black,c_black,c_black,1);

draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-string_width(string_hash_to_newline("000:00:00:00"))*0.5,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline(txttime))-1,string_hash_to_newline(txttime),c_white
,c_white,c_white,c_white,1);


}

