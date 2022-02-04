draw_sprite(sprite_index,-1,x,y)
draw_set_color(c_gray)
draw_rectangle(x,y+1,x+UberCont.opt_sfxvol*100,y+6,0)

if mouse_check_button(mb_left) and mouse_x > x-2 and mouse_x < x+100 and mouse_y > y and mouse_y < y+8
{
UberCont.opt_sfxvol = round((mouse_x-x)/5)*5/100
with MusCont
{
audio_master_gain(max(0,sqrt(max(0,UberCont.opt_sfxvol) )));

audio_sound_gain(song,max(0,sqrt(max(0,UberCont.opt_musvol) )),0);

audio_sound_gain(amb,max(0,sqrt(max(0,UberCont.opt_ambvol) )),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
}

if mouse_check_button_pressed(mb_left) and mouse_x > x+103 and mouse_x < x+113 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_sfxvol > 0
UberCont.opt_sfxvol -= 0.05
with MusCont
{
audio_master_gain(max(0,sqrt(max(0,UberCont.opt_sfxvol) )));

audio_sound_gain(song,max(0,sqrt(max(0,UberCont.opt_musvol) )),0);

audio_sound_gain(amb,max(0,sqrt(max(0,UberCont.opt_ambvol) )),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+113 and mouse_x < x+123 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_sfxvol < 1
UberCont.opt_sfxvol += 0.05
with MusCont
{
audio_master_gain(max(0,sqrt(max(0,UberCont.opt_sfxvol) )));

audio_sound_gain(song,max(0,sqrt(max(0,UberCont.opt_musvol) )),0);

audio_sound_gain(amb,max(0,sqrt(max(0,UberCont.opt_ambvol) )),0);

//audio_sound_gain(sndBossWin,max(0,sqrt(UberCont.opt_musvol)),0);
}
}
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8)
y=round(__view_get( e__VW.YView, 0 )+40)

