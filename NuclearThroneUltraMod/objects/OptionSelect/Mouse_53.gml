if mouse_x > x and mouse_x < x+24 and mouse_y > y and mouse_y < y+24 and selected = 0 && hasNoMenuOpen()
{
	snd_play_2d(sndClick);
with option2
instance_destroy();
UberCont.optY = 0;
selected = 1
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+32,MusVolSlider)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+40,SfxVolSlider)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+48,AmbVolSlider)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+56,ThreeDAudioToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+72,FullScreenToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("00")),__view_get( e__VW.YView, 0 )+80,CursorUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("0")),__view_get( e__VW.YView, 0 )+88,SideArtUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+96,BloomUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+104,CameraFollowToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+112,HighQualityToggle)
//instance_create(view_xview+view_wview/2+10+string_width("OFF"),view_yview+136,GamePadToggle)
//instance_create(view_xview+view_wview/2+10+string_width("100%"),view_yview+144,AutoAimUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+168,ShakeUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+174,FreezeFrameUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+182,LoadingScreenSpeedUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+190,MouseCPToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+198,BossIntroToggle);
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+206,TimerToggle);
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+214,DeleteSave);



}
else if StatsSelect.selected = 1 or CreditsSelect.selected = 1  or OptionSelect2.selected = 1
{
alarm[0] = 2;
with option
	instance_destroy()
}