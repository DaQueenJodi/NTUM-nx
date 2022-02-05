scrRaces()
image_index = num

if num > racemax //or UberCont.race_have[num] = 0
image_index = racemax+1

image_speed = 0

visible = 1


x = __view_get( e__VW.XView, 0 )+8+22*num//-(mouse_x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-36
if num=14
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22;
}
else if num=15
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*2;
}
else if num=16
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*3;
}
else if num=17
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*4;
}
else if num=18
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*5;
}
else if num=19
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*6;
}
else if num=20
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*7;
}
else if num=21
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*8;
}
else if num=22
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*9;
}
else if num=23
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*10;
}
else if num=24
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*11;
}
else if num=25
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*12;
}
else if num=26
{
//yy=58;
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
x = __view_get( e__VW.XView, 0 )+8+22*13;
}
else
{
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-48
normalDepth = lowerDepth;
depth = normalDepth;
//x = view_xview+8+22;
}
//yy=32;//48
var yyy = y + 48 - Menu.widescreen;
if Menu.race = image_index
{
    draw_sprite(sprSelected,-1,x,yyy)
    draw_sprite(sprite_index,-1,x+2,yyy-2)
    
    if Menu.mouseover != image_index
    draw_sprite_ext(sprite_index,-1,x+2,yyy-2,1,1,0,c_black,0.05)
}
else
{
    draw_sprite(sprite_index,-1,x,yyy)
    if UberCont.race_have[num] != 1
    draw_sprite(sprCharSelectLocked,num,x,yyy)
    
    if Menu.mouseover != image_index
	{
		draw_sprite_ext(sprite_index,-1,x,yyy,1,1,0,c_black,0.3)
		//var col = make_color_rgb(72,253,8); normal dark
		var col = make_color_rgb(72,156,8);// darker
		//var col = make_color_rgb(34,76,7); // darkest
		if UberCont.ctot_loop[num]>0
			draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
		depth = normalDepth;
	}
	else
	{
		var col = make_color_rgb(72,253,8);
		if UberCont.ctot_loop[num]>0
			draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
		depth = normalDepth - 100;
	}
    
    if UberCont.race_have[num] =1 and UberCont.ctot_dead[num] = 0 and num != 0
    draw_sprite(sprNew,-1,x,yyy)

}

