function scrDrawStats() {

	//DRAW STATS

	if widescreen > 0
	widescreen -= 8

	time = scrTime(UberCont.tot_time,true)
	dir = 1
	kills = 0
	deaths = 0
	loops = 0
	wallkill = 0;
	bkills = 0
	rkills = 0
	bdiff = 0
	rdiff = 0
	bloop = 0
	rloop = 0

	btime = 999999999
	rtime= 0

	repeat(UberCont.racemax)
	{
	kills += UberCont.ctot_kill[dir]
	deaths += UberCont.ctot_dead[dir]
	loops += UberCont.ctot_loop[dir]

	if UberCont.cbst_kill[dir] > bkills && dir != 0{
	bkills = UberCont.cbst_kill[dir]
	rkills = dir}

	if UberCont.cbst_diff[dir] > bdiff && dir != 0{
	bdiff = UberCont.cbst_diff[dir]
	rdiff = dir}

	if UberCont.cbst_loop[dir] > bloop && dir != 0{
	bloop = UberCont.cbst_loop[dir]
	rloop = dir}
	
	wallkill = UberCont.ctot_walls_destroyed;
	//if UberCont.cbst_time[UberCont.dir] = 999999999
	//besttimestring="NO TIME YET"
	//else
	//{

	if UberCont.cbst_time[dir] < btime && dir != 0{
	btime = scrTime(UberCont.cbst_time[dir],false)
	rtime = dir
	}

	//besttimestring = UberCont.cbst_time[UberCont.race]
	//}


	dir += 1
	}

	if btime = 999999999
	btime="NO TIME YET"

	race_name[0]="RANDOM"

	txt0 = "#STATISTICS"
	txt1 = "####TOTAL#TIME#KILLS#DEATHS#LOOPS#WALLS DESTROYED##BEST#TIME#KILLS#DIFFICULTY#LOOPS##"+string(race_name[Menu.race])+"#BEST KILLS#TOTAL KILLS#DEATHS#LOOPS"//+string(race_name[Menu.race])
	txt2 = "#####"+string(time)+"#"+string(kills)+"#"+string(deaths)+"#"+string(loops)+"#"+string(wallkill)+"###"+string(btime)+" "+string(race_name[rtime])+"#"+string(bkills)+" "+string(race_name[rkills])+"#"+string(bdiff)+" "+string(race_name[rdiff])+"#"+string(bloop)+" "+string(race_name[rloop])
	+"###"+string(UberCont.cbst_kill[Menu.race])+"#"+string(UberCont.ctot_kill[Menu.race])+"#"+string(UberCont.ctot_dead[Menu.race])+"#"+string(UberCont.ctot_loop[Menu.race])
	stxt0 = "#STATISTICS"
	stxt1 = "####TOTAL#######BEST######"+string(race_name[Menu.race])
	stxt2 = ""


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
