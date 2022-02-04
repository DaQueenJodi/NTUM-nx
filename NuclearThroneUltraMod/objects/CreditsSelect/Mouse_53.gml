if mouse_x > x and mouse_x < x+24 and mouse_y > y and mouse_y < y+24 and selected = 0
 && (instance_exists(OptionSelect) && OptionSelect.selected == 0)
 && (instance_exists(StatsSelect) && StatsSelect.selected == 0) 
 && (instance_exists(OptionSelect2) && OptionSelect2.selected == 0)
 && (instance_exists(UpdateSelect) && UpdateSelect.selected == 0)
{
selected = 1
with LoadoutSelect
instance_destroy()
with GameModeUpDown
instance_destroy();
with StartingWeaponUpDown
instance_destroy()
}
else
alarm[0] = 2;