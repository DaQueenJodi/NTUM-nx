draw_set_color(c_black)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)

if mode = 0
{

draw_set_font(fntM)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("This version of Nuclear Throne#is a non-final version of the game#This is a mod made by Juul# you can follow progress on#erdeppol.itch.io#/nuclear-throne-ultra-mod#twitch.com/erdeppol#on youtube CouchPotato#or on the nuclear throne subreddit#Twitter: @Erdeppol"))

}
if mode = 1
{
draw_sprite(sprite_index,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
draw_set_blend_mode(bm_add)
repeat(10)
draw_sprite_ext(sprite_index,0,__view_get( e__VW.XView, 0 )+random(8)-4,__view_get( e__VW.YView, 0 )+random(8)-4,1,1,0,c_white,0.1)
draw_set_blend_mode(bm_normal)

}
if mode = 2
{
draw_set_font(fntM)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("VLAMBEER#&#PAUL VEER#JUKIO KALLIO#JOONAS TURNER#JUSTIN CHAN##PRESENT###"))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,string_hash_to_newline("VLAMBEER#&#PAUL VEER#JUKIO KALLIO#JOONAS TURNER#JUSTIN CHAN##PRESENT###"))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,string_hash_to_newline("VLAMBEER#&#PAUL VEER#JUKIO KALLIO#JOONAS TURNER#JUSTIN CHAN##PRESENT###"))

draw_set_color(c_gray)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("VLAMBEER#&#PAUL VEER#JUKIO KALLIO#JOONAS TURNER#JUSTIN CHAN##PRESENT###"))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("#######PRESENT###"))

draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("#########A MOD BY JUUL#@Erdeppol##"))
}

