draw_sprite(sprite_index,UberCont.opt_crosshair,x,y)
var cursorNumber = UberCont.opt_crosshair;

if mouse_check_button_pressed(mb_left) and mouse_x > x and mouse_x < x+8 and mouse_y > y and mouse_y < y+8
{
snd_play_2d(sndClick);
if cursorNumber>0
cursorNumber-=1;
else
cursorNumber=15;

Cursor.image_index=cursorNumber;
UberCont.opt_crosshair=cursorNumber;
}
if mouse_check_button_pressed(mb_left) and mouse_x > x+10 and mouse_x < x+18 and mouse_y > y and mouse_y < y+8
{
snd_play_2d(sndClick);
if cursorNumber < 15
cursorNumber += 1
else
cursorNumber=0;

Cursor.image_index=cursorNumber;
UberCont.opt_crosshair=cursorNumber;

}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("00")))
y=round(__view_get( e__VW.YView, 0 )+88)

/*not funny
var cursorName;

switch(cursorNumber){
case 0:
cursorName="DEFAULT";
break;
case 1:
cursorName="DOT";
break;
case 2:
cursorName="DOT OUTLINED";
break;
case 3:
cursorName="CARBON6969 HYBRID ASSAULT RIFLE SIGHT";
break;
case 4:
cursorName="M12379 DOT SIGHT";
break;
case 5:
cursorName="X0";
case 6:
cursorName="X";
break;
break;
case 7:
cursorName="O SQUARED";
break;
case 8:
cursorName="SQUAR";
break;
case 9:
cursorName="Y.V.";
break;
case 10:
cursorName="ENTER THE GUNGEON REFRENCE";
break;
case 11:
cursorName="ENTER THE GUNGEON OUTLINED";
break;
case 12:
cursorName="THATS NOT NICE";
break;
case 13:
cursorName="O";
break;

}*/

/* */
/*  */
