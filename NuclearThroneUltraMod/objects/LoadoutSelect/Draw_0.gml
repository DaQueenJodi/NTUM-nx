if (hasNoMenuOpen()
 && race != 0)
{
draw_set_halign(fa_left)//jezus christ this menu systemm is fked up

if (wepmenuopen) {
    draw_sprite(sprSplash,0,__view_get( e__VW.XView, 0 )+77,__view_get( e__VW.YView, 0 )+49)
    var wepiter = 0;
    var wepx = 170;
    var wepy = 80;
    var spritewidth = 0;
    do {
		var sprite = wep_sprt[UberCont.start_wep[wepiter]];
        spritewidth = sprite_get_width(sprite);
        if wepx + spritewidth > 310 {
            wepx = 170;
            wepy += 16;
        }
        var xx = __view_get( e__VW.XView, 0 )+wepx;
		var yy = __view_get( e__VW.YView, 0 )+wepy;
		var l = xx;
		xx += sprite_get_xoffset(sprite);
		var r = l + spritewidth;
		var sh = sprite_get_height(sprite) * 0.5;
		var t = yy - sh;
		var b = yy + sh;
		var imageIndex = 1;
		var col = make_colour_rgb(150, 150, 150);
		if UberCont.start_wep_have[wepiter,race]=1
		{
			if (mouse_x > l && mouse_x < r && mouse_y > t && mouse_y < b)
			{
				xx += 1;
				yy -= 2;
				col = c_white;
				if mouse_check_button_pressed(mb_left)
				{
					wep = wepiter;
				}
			}
			else if wep == wepiter
			{
				xx += 1;
				yy -= 2;
				col = c_white;
			}
			imageIndex = 0;
		}
		else
		{
			var col = make_colour_rgb(100, 100, 100);	
		}
		draw_sprite_ext(sprite,imageIndex,xx,yy,1,1,0,col,1);
		//draw_rectangle(l,t,r,b,true);
		
        wepx += 8 + spritewidth
        wepiter++;
    } until (wepiter = UberCont.maxstartwep)
    
}// else {
    draw_sprite_ext(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+arrowOpenerY,wepopenscale,wepopenscale,0,c_white,wepopenscale-0.1);
//}



//SKIN

if skin=1 && UberCont.race_bskin[race]=1
{//you have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline("SKIN: B"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: B"),c_white,c_white,c_white,c_white,1);
drawMenuBSkin(skin,race,c_white);
}
else if skin = 1
{//you DONT have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline("SKIN: B"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: B"),c_black,c_black,c_black,c_black,1);

draw_sprite(sprLocked,0,__view_get( e__VW.XView, 0 )+7+string_width(string_hash_to_newline("SKIN ")),__view_get( e__VW.YView, 0 )+90);

draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+112+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+110+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_white,c_white,c_white,c_white,1);
drawMenuBSkin(skin,race,c_black);
}
else if skin=2 && UberCont.race_cskin[race]=1
{//you have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline("SKIN: C"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: C"),c_white,c_white,c_white,c_white,1);
drawMenuBSkin(skin,race,c_white);
}
else if skin = 2
{//you DONT have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline("SKIN: C"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: C"),c_black,c_black,c_black,c_black,1);

draw_sprite(sprLocked,0,__view_get( e__VW.XView, 0 )+7+string_width(string_hash_to_newline("SKIN ")),__view_get( e__VW.YView, 0 )+90);

draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+112+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+110+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_white,c_white,c_white,c_white,1);

drawMenuBSkin(skin,race,c_black);
}
else
{
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline("SKIN: A"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("SKIN: A"),c_white,c_white,c_white,c_white,1);
}


draw_sprite_ext(sprSkinSelect,0,__view_get( e__VW.XView, 0 )+72,__view_get( e__VW.YView, 0 )+64,scale,scale,0,c_white,scale-0.1);



draw_set_valign(fa_bottom)

}

