if !instance_exists(option)&&!instance_exists(option2)&&UpdateSelect.selected=0
{
race=Menu.race;


//skin = UberCont.skin
if UberCont.skin[race]=1 && UberCont.race_bskin[race]=1
UberCont.skin[race]=skin;
else if UberCont.skin[race]=2 && UberCont.race_cskin[race]=1
UberCont.skin[race]=skin;
else
UberCont.skin[race]=0;

if (wepmenuopen) {
    var arrowx = 148;
    var arrowy = 78;
    var arrowseparate = 20;
    
    draw_sprite(sprLoadOutArrow,0,__view_get( e__VW.XView, 0 )+arrowx,__view_get( e__VW.YView, 0 )+arrowy);
    draw_sprite(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+arrowx,__view_get( e__VW.YView, 0 )+arrowy+arrowseparate);
    
    if mouse_x > __view_get( e__VW.XView, 0 )+arrowx-10 and mouse_x < __view_get( e__VW.XView, 0 )+arrowx+12 and mouse_y > __view_get( e__VW.YView, 0 )+arrowy-12 and mouse_y < __view_get( e__VW.YView, 0 )+arrowy+10
    {
    upscale=1.5;
    
    if mouse_check_button_pressed(mb_left)
    {
    var dir=0;
    
    wep--;
    if wep<0
    wep=maxstartwep;
    
    }
    
    
    }
    else
    upscale=1;
    
    if mouse_x > __view_get( e__VW.XView, 0 )+arrowx-10 and mouse_x < __view_get( e__VW.XView, 0 )+arrowx+12 and mouse_y > __view_get( e__VW.YView, 0 )+arrowy+arrowseparate-12 and mouse_y < __view_get( e__VW.YView, 0 )+arrowy+arrowseparate+10
    {
    downscale=1.5;
    
    if mouse_check_button_pressed(mb_left)
    {
    
    wep++;
    if wep>maxstartwep
    wep=0;
    
    }
    
    }
    else
    downscale=1;
}


//standard weapon
if wep = 0
UberCont.start_wep[0]=race_swep[Menu.race];

//Set the starting weapon
if UberCont.start_wep_have[wep,race]=1
UberCont.cwep[race]=UberCont.start_wep[wep];

if mouse_x > __view_get( e__VW.XView, 0 )+300-10 and mouse_x < __view_get( e__VW.XView, 0 )+300+12 and mouse_y > __view_get( e__VW.YView, 0 )+43-12 and mouse_y < __view_get( e__VW.YView, 0 )+43+10
{
    wepopenscale=1.5;
    
    if mouse_check_button_pressed(mb_left)
    {
        if (wepmenuopen) {
            wepmenuopen = false;
        } else {
            wepmenuopen = true;
        }
    }
} else {
    wepopenscale=1;
}



//SKIN-------------------------------------------______________________

if mouse_x > __view_get( e__VW.XView, 0 )+72-12 and mouse_x < __view_get( e__VW.XView, 0 )+72+12 and mouse_y > __view_get( e__VW.YView, 0 )+92-12 and mouse_y < __view_get( e__VW.YView, 0 )+92+12
{
scale=1.4;

if mouse_check_button_pressed(mb_left)
{
/*
if UberCont.race_bskin[race]=1&&UberCont.race_cskin[race]=1//you have a bskin and a cskin for this character
{
skin++
if skin>2
skin=0
}
else if UberCont.race_bskin[race]=1//you have a skin for this character
{

skin++
if skin>1
skin=0



}
else//you have no new skins
{
skin=0;
}*/

skin++
if skin>2
skin=0

if skin=1 && UberCont.race_bskin[race]=1
UberCont.skin[race]=skin;
else if skin=2 && UberCont.race_cskin[race]=1
UberCont.skin[race]=skin;
else
UberCont.skin[race]=0;

}

with UberCont
scrSave();

}
else
scale=1;


}

/* */
/*  */
