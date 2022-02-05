if (hasNoMenuOpen())
{

//skin = UberCont.skin
if UberCont.skin[race]=1 && UberCont.race_bskin[race]=1
UberCont.skin[race]=skin;
else if UberCont.skin[race]=2 && UberCont.race_cskin[race]=1
UberCont.skin[race]=skin;
else
UberCont.skin[race]=0;

//standard weapon
if wep = 0
UberCont.start_wep[0]=race_swep[Menu.race];

//Set the starting weapon
if UberCont.start_wep_have[wep,race]=1
UberCont.cwep[race]=UberCont.start_wep[wep];

if race != 0 && mouse_x > __view_get( e__VW.XView, 0 )+300-10 and mouse_x < __view_get( e__VW.XView, 0 )+300+12 and mouse_y > __view_get( e__VW.YView, 0 )+arrowOpenerY-12 and mouse_y < __view_get( e__VW.YView, 0 )+arrowOpenerY+10
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

if race != 0 && mouse_x > __view_get( e__VW.XView, 0 )+72-12 and mouse_x < __view_get( e__VW.XView, 0 )+72+12 and mouse_y > __view_get( e__VW.YView, 0 )+60-12 and mouse_y < __view_get( e__VW.YView, 0 )+60+12
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
snd_play(choose(sndMenuASkin,sndMenuBSkin));
}

with UberCont
scrSave();

}
else
scale=1;

}
imageIndex += 0.5;
