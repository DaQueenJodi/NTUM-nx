/// @description xxx
if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
if wep > 0
wep -= 1;
else
wep=maxwep;
    
}

if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
if wep < maxwep
wep += 1
else
wep=0;
}

//steps of 10
if mouse_check_button_pressed(mb_left) and mouse_x > x+20 and mouse_x < x+8+20 and mouse_y > y and mouse_y < y+8
{
    repeat(10)
    {
    if wep > 0
    wep -= 1;
    else
    wep=maxwep;
    }
}

if mouse_check_button_pressed(mb_left) and mouse_x > x+10+20 and mouse_x < x+18+20 and mouse_y > y and mouse_y < y+8
{
    repeat(10)
    {
    if wep < maxwep
    wep += 1
    else
    wep=0;
    }
}