if !instance_exists(option)&&!instance_exists(option2)&&UpdateSelect.selected=0 && race!=0
{
draw_set_halign(fa_left)//jezus christ this menu systemm is fked up

if (wepmenuopen) {
    draw_sprite(splash,0,__view_get( e__VW.XView, 0 )+77,__view_get( e__VW.YView, 0 )+49)
    
    
    //draw_text_color(view_xview+6,view_yview+86,"STARTING WEAPON: ",c_black,c_black,c_black,c_black,1);
    //draw_text_color(view_xview+7,view_yview+85,"STARTING WEAPON: ",c_white,c_white,c_white,c_white,1);
    
    var wepiter = 0;
    var wepx = 170;
    var wepy = 60;
    var spritewidth = 0;
    
    do {
        spritewidth = sprite_get_width(wep_sprt[UberCont.start_wep[wepiter]])
        if wepx + spritewidth > 310 {
            wepx = 170;
            wepy += 16;
        }
        
        if UberCont.start_wep_have[wepiter,race]=1
        if wepiter = wep {
            draw_sprite_ext(wep_sprt[UberCont.start_wep[wepiter]],0,__view_get( e__VW.XView, 0 )+wepx+2,__view_get( e__VW.YView, 0 )+wepy-2,1,1,0,c_white,1);
        } else {
            draw_sprite(wep_sprt[UberCont.start_wep[wepiter]],0,__view_get( e__VW.XView, 0 )+wepx,__view_get( e__VW.YView, 0 )+wepy);
        }
        else
        if wepiter = wep {
            draw_sprite_ext(wep_sprt[UberCont.start_wep[wepiter]],0,__view_get( e__VW.XView, 0 )+wepx+2,__view_get( e__VW.YView, 0 )+wepy-2,1,1,0,make_colour_rgb(40, 40, 40),1);
        } else {
            draw_sprite_ext(wep_sprt[UberCont.start_wep[wepiter]],0,__view_get( e__VW.XView, 0 )+wepx,__view_get( e__VW.YView, 0 )+wepy,1,1,0,make_colour_rgb(40, 40, 40),1);
        }
        
        wepx += 12 + spritewidth
        wepiter++;
    } until (wepiter = UberCont.maxstartwep)
    
    var arrowx = 148;
    var arrowy = 78;
    var arrowseparate = 20;
    
    draw_sprite_ext(sprLoadOutArrow,0,__view_get( e__VW.XView, 0 )+arrowx,__view_get( e__VW.YView, 0 )+arrowy,upscale,upscale,0,c_white,upscale-0.1);
    draw_sprite_ext(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+arrowx,__view_get( e__VW.YView, 0 )+arrowy+arrowseparate,downscale,downscale,0,c_white,downscale-0.1);

    draw_sprite_ext(sprLoadOutArrow,0,__view_get( e__VW.XView, 0 )+arrowx,__view_get( e__VW.YView, 0 )+arrowy,upscale,upscale,0,c_white,upscale-0.1);
    draw_sprite_ext(sprLoadOutArrow,0,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+43,wepopenscale,wepopenscale,0,c_white,wepopenscale-0.1);
} else {
    draw_sprite_ext(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+300,__view_get( e__VW.YView, 0 )+43,wepopenscale,wepopenscale,0,c_white,wepopenscale-0.1);
}



//SKIN

if skin=1 && UberCont.race_bskin[race]=1
{//you have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+96,string_hash_to_newline("SKIN: B"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+95,string_hash_to_newline("SKIN: B"),c_white,c_white,c_white,c_white,1);
drawMenuBSkin(skin,race,c_white);
}
else if skin = 1
{//you DONT have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+96,string_hash_to_newline("SKIN: B"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+95,string_hash_to_newline("SKIN: B"),c_black,c_black,c_black,c_black,1);

draw_sprite(sprLocked,0,__view_get( e__VW.XView, 0 )+7+string_width(string_hash_to_newline("SKIN ")),__view_get( e__VW.YView, 0 )+90);

draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+112+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+110+string_height(string_hash_to_newline(race_bskin_lock[race])),string_hash_to_newline(race_bskin_lock[race]),c_white,c_white,c_white,c_white,1);
drawMenuBSkin(skin,race,c_black);
}
else if skin=2 && UberCont.race_cskin[race]=1
{//you have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+96,string_hash_to_newline("SKIN: C"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+95,string_hash_to_newline("SKIN: C"),c_white,c_white,c_white,c_white,1);
drawMenuBSkin(skin,race,c_white);
}
else if skin = 2
{//you DONT have this one
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+96,string_hash_to_newline("SKIN: C"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+95,string_hash_to_newline("SKIN: C"),c_black,c_black,c_black,c_black,1);

draw_sprite(sprLocked,0,__view_get( e__VW.XView, 0 )+7+string_width(string_hash_to_newline("SKIN ")),__view_get( e__VW.YView, 0 )+90);

draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+112+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+110+string_height(string_hash_to_newline(race_cskin_lock[race])),string_hash_to_newline(race_cskin_lock[race]),c_white,c_white,c_white,c_white,1);

drawMenuBSkin(skin,race,c_black);
}
else
{
draw_text_color(__view_get( e__VW.XView, 0 )+6,__view_get( e__VW.YView, 0 )+96,string_hash_to_newline("SKIN: A"),c_black,c_black,c_black,c_black,1);
draw_text_color(__view_get( e__VW.XView, 0 )+7,__view_get( e__VW.YView, 0 )+95,string_hash_to_newline("SKIN: A"),c_white,c_white,c_white,c_white,1);
}


draw_sprite_ext(sprSkinSelect,0,__view_get( e__VW.XView, 0 )+72,__view_get( e__VW.YView, 0 )+92,scale,scale,0,c_white,scale-0.1);



draw_set_valign(fa_bottom)

}

