if mouse_x > x and mouse_x < x+24 and mouse_y > y and mouse_y < y+24 and selected = 0
 && (instance_exists(OptionSelect) && OptionSelect.selected == 0)
 && (instance_exists(StatsSelect) && StatsSelect.selected == 0) 
 && (instance_exists(UpdateSelect) && UpdateSelect.selected == 0)
 && (instance_exists(CreditsSelect) && CreditsSelect.selected == 0)
{
with option
	instance_destroy()
selected = 1
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+40,KeyUp)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+48,KeyDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+56,KeyLeft)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+64,KeyRight)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+72,KeySwap)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+80,KeyPickup)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-__view_get( e__VW.WView, 0 )/4,__view_get( e__VW.YView, 0 )+64,KeyReset)

//instance_create(view_xview+view_wview/2,view_yview+96,GameModeUpDown)

instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+96,GameModeUpDown)

}
else if StatsSelect.selected = 1 or CreditsSelect.selected = 1 or OptionSelect.selected = 1 or UpdateSelect.selected = 1
{
alarm[0] = 2;
with option2
instance_destroy()
}