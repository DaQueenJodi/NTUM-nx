x = __view_get( e__VW.XView, 0 )+8+22*num//-(mouse_x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-36
var yy;
yy=48;

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
//x = view_xview+8+22;
}
//yy=32;//48

if Menu.race = image_index
{
    draw_sprite(sprSelected,-1,x,y+yy-Menu.widescreen)
    draw_sprite(sprite_index,-1,x+2,y+yy-2-Menu.widescreen)
    //if UberCont.ctot_dead[num] = 0 and num != 0
    //draw_sprite(sprNew,-1,x+2,y+yy-2-Menu.widescreen)
    
    if Menu.mouseover != image_index
    draw_sprite_ext(sprite_index,-1,x+2,y+yy-2-Menu.widescreen,1,1,0,c_black,0.05)
}
else
{
    draw_sprite(sprite_index,-1,x,y+yy-Menu.widescreen)
    if UberCont.race_have[num] != 1
    draw_sprite(sprCharSelectLocked,num,x,y+yy-Menu.widescreen)
    
    if Menu.mouseover != image_index
    draw_sprite_ext(sprite_index,-1,x,y+yy-Menu.widescreen,1,1,0,c_black,0.3)
    
    if UberCont.race_have[num] =1 and UberCont.ctot_dead[num] = 0 and num != 0
    draw_sprite(sprNew,-1,x,y+yy-Menu.widescreen)

}

