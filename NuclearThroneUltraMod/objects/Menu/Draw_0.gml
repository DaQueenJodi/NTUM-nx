draw_set_color(c_black)

//alpha overlay
draw_set_alpha(0.8-(widescreen/48)*0.8)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_set_alpha(1)

//DRAW SOME SCREENS

if mode = 0
{
if widescreen > 0
widescreen -= 8


draw_sprite(sprLogo,-1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)

if image_index >= 14
{
draw_set_blend_mode(bm_add)
ang = 0

repeat(8)
{

draw_sprite_ext(sprLogoGlow,-1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+lengthdir_x(4+sin(wave)*(2+random(1)),ang),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+lengthdir_y(4+sin(wave)*(2+random(1)),ang),1,1,0,c_white,0.05)
ang += 360/8
wave += random(0.02)
}
draw_set_blend_mode(bm_normal)
wave += 0.05
}
}

if mode = 1
{

if CreditsSelect.selected = 0 and StatsSelect.selected = 0 and OptionSelect.selected = 0 and OptionSelect2.selected = 0 and UpdateSelect.selected = 0
{
scrDrawCharSelect()
}
else if StatsSelect.selected = 1
{
scrDrawStats()
}
else if CreditsSelect.selected = 1
{
scrDrawCredits()
}
else if UpdateSelect.selected = 1
{
scrDrawUpdate()
}
else if OptionSelect.selected = 1
{
scrDrawOptions()
}
else if OptionSelect2.selected = 1
{
scrDrawOptions2()
}
}

draw_set_color(c_black)

//widescreen bars side art
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+widescreen,0)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen,0)


