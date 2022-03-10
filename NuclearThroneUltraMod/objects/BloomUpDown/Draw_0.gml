draw_sprite(sprite_index,UberCont.opt_bloom,x,y)
var bloomNumber = UberCont.opt_bloom;

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
snd_play_2d(sndClick);
if bloomNumber>0
bloomNumber-=0.05;
else
bloomNumber=0.9;


UberCont.opt_bloom = bloomNumber;
with TopCont
bloomAlpha=UberCont.opt_bloom;
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
snd_play_2d(sndClick);
if bloomNumber < 0.9
bloomNumber += 0.05;
else
bloomNumber=0;

UberCont.opt_bloom = bloomNumber;
with TopCont
bloomAlpha=UberCont.opt_bloom;
}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")))
y=round(__view_get( e__VW.YView, 0 )+96+8)


