
//DRAW STATS

if widescreen > 0
widescreen -= 8

time = scrTime(UberCont.tot_time,true)
dir = 1
kills = 0
deaths = 0
loops = 0
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

if UberCont.cbst_kill[dir] > bkills{
bkills = UberCont.cbst_kill[dir]
rkills = dir}

if UberCont.cbst_diff[dir] > bdiff{
bdiff = UberCont.cbst_diff[dir]
rdiff = dir}

if UberCont.cbst_loop[dir] > bloop{
bloop = UberCont.cbst_loop[dir]
rloop = dir}

//if UberCont.cbst_time[UberCont.dir] = 999999999
//besttimestring="NO TIME YET"
//else
//{

if UberCont.cbst_time[dir] < btime{
btime = scrTime(UberCont.cbst_time[dir],false)
rtime = dir
}

//besttimestring = UberCont.cbst_time[UberCont.race]
//}


dir += 1
}

if btime = 999999999
btime="NO TIME YET"

race_name[0]="|"

txt0 = "#STATISTICS"
txt1 = "####TOTAL#TIME#KILLS#DEATHS#LOOPS##BEST#TIME#KILLS#DIFFICULTY#LOOPS##"+string(race_name[Menu.race])+"#KILLS#TOTAL KILLS#DEATHS#LOOPS"//+string(race_name[Menu.race])
txt2 = "#####"+string(time)+"#"+string(kills)+"#"+string(deaths)+"#"+string(loops)+"###"+string(btime)+" "+string(race_name[rtime])+"#"+string(bkills)+" "+string(race_name[rkills])+"#"+string(bdiff)+" "+string(race_name[rdiff])+"#"+string(bloop)+" "+string(race_name[rloop])
+"###"+string(UberCont.cbst_kill[Menu.race])+"#"+string(UberCont.ctot_kill[Menu.race])+"#"+string(UberCont.ctot_dead[Menu.race])+"#"+string(UberCont.ctot_loop[Menu.race])
stxt0 = "#STATISTICS"
stxt1 = "####TOTAL######BEST######"+string(race_name[Menu.race])
stxt2 = ""


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
