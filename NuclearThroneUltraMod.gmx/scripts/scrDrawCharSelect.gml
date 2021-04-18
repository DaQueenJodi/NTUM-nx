if widescreen < 48
widescreen += 8

mouseover = -1
/*
with CampChar{
if position_meeting(mouse_x,mouse_y,self) and y > view_yview+48 and y < view_yview+view_hview-48 and mouse_y > view_yview+Menu.widescreen and mouse_y < view_yview+view_hview-Menu.widescreen
other.mouseover = num}*/
with CharSelect{
if position_meeting(mouse_x,mouse_y,self)// and y > view_yview+48 and y < view_yview+view_hview-48
other.mouseover = num}

if mouseover = race and race != 0
extra = 96
else if mouseover != -1
extra = 0

draw_set_font(fntM)

//GAME MODE!
draw_set_halign(fa_left)//jezus christ this menu systemm is fked up


draw_text_color(view_xview+6,view_yview+65,"GAMEMODE : "+gamemode[UberCont.opt_gamemode],c_black,c_black,c_black,c_black,1);
draw_text_color(view_xview+7,view_yview+64,"GAMEMODE : "+gamemode[UberCont.opt_gamemode],c_white,c_white,c_white,c_white,1);

draw_set_valign(fa_bottom)

/*with CampChar {
if other.mouseover = num or (other.race = num and other.mouseover = -1){
draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(x-2-string_width(Menu.race_name[num])/2,y-26-string_height("A"),x+2+string_width(Menu.race_name[num])/2,y-22,0)
draw_set_alpha(1)
draw_sprite_ext(sprMenuPointer,0,x,y-22,1,1,0,c_white,0.8)
draw_set_halign(fa_center)
draw_text(x+1,y-24,string(Menu.race_name[num]))
draw_text(x+1,y-24+1,string(Menu.race_name[num]))
draw_text(x,y-24+1,string(Menu.race_name[num]))
draw_set_color(c_white)
draw_text(x,y-24,string(Menu.race_name[num]))
}}*/

draw_set_halign(fa_right)


if mouseover = -1
txt2 = string(race_name[race])+"#"+string(race_pass[race])+"# "+string(race_acti[race])
else if UberCont.cgot[mouseover] = 1
txt2 = string(race_name[mouseover])+"#"+string(race_pass[mouseover])+"# "+string(race_acti[mouseover])
else
txt2 = "[LOCKED]#"+string(race_lock[mouseover])

if mouseover = -1
drawx = view_xview+14+race*22
else
drawx = view_xview+14+mouseover*22
drawy = view_yview+view_hview-widescreen


if drawx-string_width(txt2)/2-2 < view_xview+2
drawx = view_xview+4+string_width(txt2)/2

if extra=14
extra =1;

if drawx+string_width(txt2)/2+2+extra > view_xview+view_wview-2
drawx = view_xview+view_wview-4-string_width(txt2)/2-extra


draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(drawx-string_width(txt2)/2-2,drawy-17-string_height(txt2),drawx+extra+string_width(txt2)/2+2,drawy-12,0)
draw_set_alpha(1)

if mouseover = -1
draw_sprite_ext(sprMenuPointer,0,view_xview+14+race*22,drawy-12,1,1,0,c_white,0.8)
else
draw_sprite_ext(sprMenuPointer,0,view_xview+14+mouseover*22,drawy-12,1,1,0,c_white,0.8)

draw_text(drawx+string_width(txt2)/2,drawy-13,string(txt2))
draw_text(drawx+string_width(txt2)/2+1,drawy-13,string(txt2))
draw_text(drawx+string_width(txt2)/2+1,drawy-14,string(txt2))
draw_set_color(c_silver)
draw_text(drawx+string_width(txt2)/2,drawy-14,string(txt2))
draw_set_color(c_white)

if mouseover = -1
draw_text(drawx+string_width(txt2)/2,drawy-14-string_height(txt2)+string_height(race_name[race]),string(race_name[race]))
else if UberCont.cgot[mouseover] = 1
draw_text(drawx+string_width(txt2)/2,drawy-14-string_height(txt2)+string_height(race_name[mouseover]),string(race_name[mouseover]))
else
draw_text(drawx+string_width(txt2)/2,drawy-14-string_height(txt2)+string_height(race_name[mouseover]),"[LOCKED]")

if extra > 0 and race != 0
draw_sprite(sprExplain,race,drawx+string_width(txt2)/2+2,drawy-13)

img += 0.1

if mouseover = -1
draw_sprite(sprRMBIcon,-1,drawx+string_width(txt2)/2-string_width(race_acti[race])-8,drawy-22)
else if UberCont.cgot[mouseover] = 1
draw_sprite(sprRMBIcon,-1,drawx+string_width(txt2)/2-string_width(race_acti[mouseover])-8,drawy-22)


