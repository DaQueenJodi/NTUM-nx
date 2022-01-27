draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)


draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x+20,y)

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

//UberCont.opt_gm1wep=wep;

//draw_sprite(wep_sprt[wep],0,x,y+24);
//draw_text_color(x,y+16,string(wep),c_white,c_white,c_white,c_white,1);

/*draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_freeze > 0
UberCont.opt_freeze -= 0.1
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
if UberCont.opt_freeze < 4
UberCont.opt_freeze += 0.1
}

if UberCont.opt_freeze != 1
draw_text(x+20,y,"TWEAK IT!")


/* */
/*  */
