function scrDrawCredits() {

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
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt0)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt0)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt0)))

	draw_set_halign(fa_right)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt1)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-7,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt1)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt1)))

	draw_set_halign(fa_left)

	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 )+1,string_hash_to_newline(string(txt2)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+9,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
	draw_set_color(c_gray)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(txt2)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 ),string_hash_to_newline(string(stxt2)))



}
