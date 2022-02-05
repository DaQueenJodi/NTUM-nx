draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)
//draw_sprite(sprite_index,UberCont.opt_gamemode,x,y)
//draw_self();
if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
if gamemodenr > 0
gamemodenr -= 1
else
gamemodenr = maxgamemode

}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
if gamemodenr < maxgamemode
gamemodenr += 1
else
gamemodenr=0;
}

//draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)

if (UberCont.opt_gamemode==1&&gamemodeOrder[gamemodenr]==1)
{
if !instance_exists(StartingWeaponUpDown)
instance_create(x,y+8,StartingWeaponUpDown);
/*with(instance_create(x,y+32,WeaponDisplay))
{
scrWeapons();
sprite_index=wep_sprt[1];
}*/
}
else{
with StartingWeaponUpDown
instance_destroy()
}

if (UberCont.opt_gamemode==19&&gamemodeOrder[gamemodenr]==19)
{
if !instance_exists(DiscDamageUpDown)
instance_create(x,y+24,DiscDamageUpDown);

if !instance_exists(DiscAmountUpDown)
instance_create(x,y+32,DiscAmountUpDown);
/*with(instance_create(x,y+32,WeaponDisplay))
{
scrWeapons();
sprite_index=wep_sprt[1];
}*/
}
else{
with DiscDamageUpDown
instance_destroy()
with DiscAmountUpDown
instance_destroy()
}

if UberCont.gamemode_have[gamemodeOrder[gamemodenr]]=1
{
UberCont.opt_gamemode=gamemodeOrder[gamemodenr];
}
else
{
draw_sprite(sprLocked,0,x,y+48);

draw_set_color(c_gray)
draw_text(x-string_width(string_hash_to_newline(gamemode_unlock[gamemodeOrder[gamemodenr]]))*0.6,y+64,string_hash_to_newline(gamemode_unlock[gamemodeOrder[gamemodenr]]))
draw_set_color(c_white)
draw_text(x-string_width(string_hash_to_newline(gamemode_unlock[gamemodeOrder[gamemodenr]]))*0.6,y+64,string_hash_to_newline(gamemode_unlock[gamemodeOrder[gamemodenr]]))
}


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
