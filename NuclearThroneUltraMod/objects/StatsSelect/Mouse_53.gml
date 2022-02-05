if mouse_x > x and mouse_x < x+24 and mouse_y > y and mouse_y < y+24 and selected = 0 && hasNoMenuOpen()
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

