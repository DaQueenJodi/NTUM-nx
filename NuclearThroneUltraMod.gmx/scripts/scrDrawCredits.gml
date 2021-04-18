
//DRAW CREDITS

if widescreen > 0
widescreen -= 8

txt0 = "#NUCLEAR THRONE#A GAME BY VLAMBEER#MOD BY ERDEPPOL"
txt1 = "####DIRECTOR:#JAN WILLEM NIJMAN##PRODUCER:#RAMI ISMAIL##ART &#CHARACTER DESIGN:#PAUL VEER##MUSIC:#JUKIO KALLIO##SOUND DESIGN:#JOONAS TURNER##PROMOTIONAL ART:#JUSTIN CHAN##VOICE OF MR. VENUZ:#DOSEONE###MODDED BY"
txt2 = "####SPECIAL THANKS:#"+string(thanks)
stxt0 = "#NUCLEAR THRONE"
stxt1 = "####DIRECTOR:###PRODUCER:###ART &#CHARACTER DESIGN:###MUSIC:###SOUND DESIGN:###PROMOTIONAL ART:###VOICE OF MR. VENUZ:#####JUUL @Erdeppol"
stxt2 = "####SPECIAL THANKS:"

draw_set_font(fntM)
draw_set_valign(fa_top)
draw_set_halign(fa_center)


draw_set_color(c_black)
draw_text(view_xview+view_wview/2,view_yview+1,string(txt0))
draw_text(view_xview+view_wview/2+1,view_yview+1,string(txt0))
draw_text(view_xview+view_wview/2+1,view_yview,string(txt0))
draw_set_color(c_gray)
draw_text(view_xview+view_wview/2,view_yview,string(txt0))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2,view_yview,string(stxt0))

draw_set_halign(fa_right)
draw_set_color(c_black)
draw_text(view_xview+view_wview/2-8,view_yview+1,string(txt1))
draw_text(view_xview+view_wview/2-7,view_yview+1,string(txt1))
draw_text(view_xview+view_wview/2-7,view_yview,string(txt1))
draw_set_color(c_gray)
draw_text(view_xview+view_wview/2-8,view_yview,string(txt1))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2-8,view_yview,string(stxt1))

draw_set_halign(fa_left)

draw_set_color(c_black)
draw_text(view_xview+view_wview/2+8,view_yview+1,string(txt2))
draw_text(view_xview+view_wview/2+9,view_yview+1,string(txt2))
draw_text(view_xview+view_wview/2+9,view_yview,string(txt2))
draw_set_color(c_gray)
draw_text(view_xview+view_wview/2+8,view_yview,string(txt2))
draw_set_color(c_white)
draw_text(view_xview+view_wview/2+8,view_yview,string(stxt2))
