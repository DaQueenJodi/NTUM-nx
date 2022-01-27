function scrDrawOptions() {
	//DRAW OPTIONS
	if widescreen > 0
	widescreen -= 8

	if UberCont.opt_bossintro=1
	bossintro="ON"
	else
	bossintro="OFF"

	if UberCont.opt_timer=1
	timer="ON"
	else
	timer="OFF"

	txt0 = "#OPTIONS##########################PRESS [RIGHT CLICK] TO RETURN"
	txt1 = "####AUDIO#MUSIC VOLUME#MASTER VOLUME#AMBIENT VOLUME##VISUALS#FULL SCREEN#CROSSHAIR#BLOOM#SHADOWS#HIGH QUALITY##CONTROLS#GAMEPAD#GAMEPAD AUTOAIM##OTHER#SCREEN SHAKE#FREEZE FRAMES#LOADING SPEED#CAPTURE MOUSE#BOSS INTROS#TIMER"
	txt2 = "#####"+string(scrAddZero(round(UberCont.opt_musvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_sfxvol*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_ambvol*100),2))
	+"%###"+string(scrOnOff(UberCont.opt_fulscrn))+"#"+string(UberCont.opt_crosshair+1)+"#"+string(round(UberCont.opt_bloom*1000))+"%#"+string(scrOnOff(UberCont.opt_shadow))+"#"//
	+string(scrOnOff(UberCont.opt_highquality))+"###"+"AUTO ACTIVE#"+"AUTO ACTIVE"
	+"###"+string(scrAddZero(round(UberCont.opt_shake*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_freeze*100),2))+"%#"+string(scrAddZero(round(UberCont.opt_loading*100),2))+"%#"+string(scrOnOff(UberCont.opt_mousecp))+"#"+string(bossintro)+"#"+string(timer)




	stxt0 = "#OPTIONS"
	stxt1 = "####AUDIO#####VISUALS#######CONTROLS####OTHER####"
	stxt2 = txt2


	with MusVolSlider
	event_perform(ev_draw,0)
	with SfxVolSlider
	event_perform(ev_draw,0)
	with AmbVolSlider
	event_perform(ev_draw,0)

	with FullScreenToggle
	event_perform(ev_draw,0)
	with CursorUpDown
	event_perform(ev_draw,0)
	with BloomUpDown
	event_perform(ev_draw,0)
	with ShadowToggle
	event_perform(ev_draw,0)
	with HighQualityToggle
	event_perform(ev_draw,0)
	//with GamePadToggle
	//event_perform(ev_draw,0)
	//with AutoAimUpDown
	//event_perform(ev_draw,0)

	with ShakeUpDown
	event_perform(ev_draw,0)
	with MouseCPToggle
	event_perform(ev_draw,0)
	with FreezeFrameUpDown
	event_perform(ev_draw,0)
	with LoadingScreenSpeedUpDown
	event_perform(ev_draw,0)
	with BossIntroToggle
	event_perform(ev_draw,0)
	with TimerToggle
	event_perform(ev_draw,0)


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
