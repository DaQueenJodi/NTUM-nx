if UberCont.opt_gamemode!=3{//NO HUD gamemode


draw_set_font(fntM)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

///POPUP TEXT
with PopupText
{
if visible = 1
{
draw_set_color(c_black)
draw_text(median(view_xview+view_wview-10-string_width(mytext)/2,view_xview+10+string_width(mytext)/2,x),median(view_yview+view_hview-30+1,view_yview+20+1,y)+1,string(mytext))
draw_text(median(view_xview+view_wview-10-string_width(mytext)/2,view_xview+10+string_width(mytext)/2,x)+1,median(view_yview+view_hview-30+1,view_yview+20+1,y)+1,string(mytext))
draw_text(median(view_xview+view_wview-10-string_width(mytext)/2,view_xview+10+string_width(mytext)/2,x)+1,median(view_yview+view_hview-30+1,view_yview+20+1,y),string(mytext))
draw_set_color(colour)
draw_text(median(view_xview+view_wview-10-string_width(mytext)/2,view_xview+10+string_width(mytext)/2,x),median(view_yview+view_hview-30,view_yview+20,y),string(mytext))
}
}

with LevelUp
draw_sprite(sprite_index,-1,x,y)

if instance_exists(Player)
{
//DRAW THE HUD HERE


//HEALTH BAR
draw_sprite(sprHealthBar,2,view_xview+20,view_yview+4)
if Player.maxhealth!=0{
draw_sprite_ext(sprHealthFill,2,view_xview+22,view_yview+7,max(0,84*(Player.lsthealth/Player.maxhealth)),1,0,c_white,1)
draw_sprite_ext(sprHealthFill,1,view_xview+22,view_yview+7,max(0,84*(Player.my_health/Player.maxhealth)),1,0,c_white,1)

if ((Player.sprite_index = Player.spr_hurt and Player.image_index < 1 and !instance_exists(Portal)) or Player.lsthealth < Player.my_health) and !instance_exists(GenCont) and !instance_exists(LevCont)
draw_sprite_ext(sprHealthFill,0,view_xview+22,view_yview+7,max(0,84*(Player.my_health/Player.maxhealth)),1,0,c_white,1)
}
draw_set_font(fntM)


//VIKING ARMOUR
var armour = Player.armour;
var dir=0;
repeat(armour)
{
dir++;
draw_sprite(sprArmour,0,view_xview+94+(15*dir),view_yview+4);
}


//ROGUE AMMO
if Player.race=22
{
draw_sprite(sprRogueAmmoHUD,0,view_xview+116,view_yview+11)
draw_sprite(sprRogueAmmoHUD,Player.rogueammo,view_xview+116,view_yview+11)
}



//CROWNS

draw_set_halign(fa_right)

if Player.crown > 1 and !instance_exists(LevCont)
{
draw_set_color(c_black)
draw_text(view_xview+1,view_yview+view_hview-string_height("C")-2,string(Player.crown_name[Player.crown])/*+"#"+string(Player.crown_text[Player.crown])*/)
draw_text(view_xview+1,view_yview+view_hview-string_height("C")-2+1,string(Player.crown_name[Player.crown])/*+"#"+string(Player.crown_text[Player.crown])*/)
draw_text(view_xview,view_yview+view_hview-string_height("C")-2+1,string(Player.crown_name[Player.crown])/*+"#"+string(Player.crown_text[Player.crown])*/)
draw_set_color(c_white)
draw_text(view_xview,view_yview+view_hview-string_height("C")-2,string(Player.crown_name[Player.crown])/*+"#"+string(Player.crown_text[Player.crown])*/)
draw_set_valign(fa_top)
}

//HEALTH TEXT
draw_set_halign(fa_center)
if (!((Player.sprite_index = Player.spr_hurt and Player.image_index < 1 and !instance_exists(Portal)) or Player.lsthealth < Player.my_health) or sin(wave) > 0) or instance_exists(GenCont) or instance_exists(LevCont)
{
draw_set_color(c_black)
draw_text(view_xview+23+44,view_yview+8,string(Player.my_health)+"/"+string(Player.maxhealth))
draw_text(view_xview+23+45,view_yview+8,string(Player.my_health)+"/"+string(Player.maxhealth))
draw_text(view_xview+23+45,view_yview+7,string(Player.my_health)+"/"+string(Player.maxhealth))
draw_set_color(c_white)
draw_text(view_xview+23+44,view_yview+7,string(Player.my_health)+"/"+string(Player.maxhealth))
}
var wepcolour = c_white;
var wep;


//TERTIARY WEAPON
if Player.race=8{//robotos
if Player.cwep != 0 && Player.ultra_got[31]//robot ultra c
{
var spr, col, wid;
spr = Player.wep_sprt[Player.cwep]
wid = 16
if Player.wep_type[Player.cwep] = 0
wid = 32
col = c_dkgray

//Wepon
PlayerWep=Player.cwep
if Player.ccurse==1
col=make_colour_rgb(136,36,174);//curse

//gold
if (scrCheckGold(Player.cwep))
col=make_colour_rgb(223,201,134);//gold

if round(Player.area/2) = Player.area/2 or col = c_white or Player.ccurse==1 or instance_exists(GenCont) or instance_exists(LevCont)
{//42 more to -->
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+110,view_yview+16,1,1,col,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+112,view_yview+16,1,1,col,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+111,view_yview+15,1,1,col,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+111,view_yview+17,1,1,col,1)
}

draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+110,view_yview+16,1,1,c_black,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,wid*min(Player.wep_load[Player.cwep],Player.creload/Player.wep_load[Player.cwep])),14,view_xview+110,view_yview+16,1,1,c_white,0.2)

if Player.wep_type[Player.cwep] != 0
{
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+130,view_yview+22,string(Player.ammo[Player.wep_type[Player.cwep]]))
draw_text(view_xview+131,view_yview+22,string(Player.ammo[Player.wep_type[Player.cwep]]))
draw_text(view_xview+131,view_yview+21,string(Player.ammo[Player.wep_type[Player.cwep]]))
if Player.wep_type[Player.wep] = Player.wep_type[Player.cwep]
draw_set_color(c_white)
else
draw_set_color(c_silver)
if Player.ammo[Player.wep_type[Player.cwep]] <= Player.typ_ammo[Player.wep_type[Player.cwep]]
{
if Player.wep_type[Player.wep] = Player.wep_type[Player.cwep]
draw_set_color(c_red)
else
draw_set_color(c_gray)
}
if Player.ammo[Player.wep_type[Player.cwep]] = 0
draw_set_color(c_dkgray)
draw_text(view_xview+130,view_yview+21,string(Player.ammo[Player.wep_type[Player.cwep]]))
}
}}


//SECONDARY WEAPON
if Player.bwep != 0
{
var spr, col, wid;
spr = Player.wep_sprt[Player.bwep]
wid = 16
if Player.wep_type[Player.bwep] = 0
wid = 32
col = c_dkgray
if Player.race = 7
col = c_white

//wepon
if Player.bcurse==1
col=make_colour_rgb(136,36,174);//curse

if (scrCheckGold(Player.bwep))
col=make_colour_rgb(223,201,134);//gold

if round(Player.area/2) = Player.area/2 or col = c_white or Player.bcurse==1 or instance_exists(GenCont) or instance_exists(LevCont)
{
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+67,view_yview+16,1,1,col,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+69,view_yview+16,1,1,col,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+68,view_yview+15,1,1,col,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+68,view_yview+17,1,1,col,1)
}

draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+68,view_yview+16,1,1,c_black,1)


draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,wid*min(Player.wep_load[Player.bwep],Player.breload/Player.wep_load[Player.bwep])),14,view_xview+68,view_yview+16,1,1,c_white,0.2)

if Player.wep_type[Player.bwep] != 0
{
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+86,view_yview+22,string(Player.ammo[Player.wep_type[Player.bwep]]))
draw_text(view_xview+87,view_yview+22,string(Player.ammo[Player.wep_type[Player.bwep]]))
draw_text(view_xview+87,view_yview+21,string(Player.ammo[Player.wep_type[Player.bwep]]))
if Player.race = 7 or Player.wep_type[Player.wep] = Player.wep_type[Player.bwep]
draw_set_color(c_white)
else
draw_set_color(c_silver)
if Player.ammo[Player.wep_type[Player.bwep]] <= Player.typ_ammo[Player.wep_type[Player.bwep]]
{
if Player.race = 7 or Player.wep_type[Player.wep] = Player.wep_type[Player.bwep]
draw_set_color(c_red)
else
draw_set_color(c_gray)
}
if Player.ammo[Player.wep_type[Player.bwep]] = 0
draw_set_color(c_dkgray)
draw_text(view_xview+86,view_yview+21,string(Player.ammo[Player.wep_type[Player.bwep]]))
}
}


//PRIMARY WEAPON
var spr, wid;
spr = Player.wep_sprt[Player.wep]
wid = 16
if Player.wep_type[Player.wep] = 0
wid = 32

wepcolour=c_white;

if Player.curse==1
wepcolour=make_colour_rgb(136,36,174);//curse

if (scrCheckGold(Player.wep))
wepcolour=make_colour_rgb(223,201,134);//gold

draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+25,view_yview+16,1,1,wepcolour,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+23,view_yview+16,1,1,wepcolour,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+24,view_yview+17,1,1,wepcolour,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+24,view_yview+15,1,1,wepcolour,1)

draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,view_xview+24,view_yview+16,1,1,c_black,1)
draw_sprite_part_ext(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,wid*min(Player.wep_load[Player.wep],Player.reload/Player.wep_load[Player.wep])),14,view_xview+24,view_yview+16,1,1,c_white,0.2)

//WEAPON MODS!
draw_sprite(sprModHUD,Player.wepmod1,view_xview+18,view_yview+30);
draw_sprite(sprModHUD,Player.wepmod2,view_xview+28,view_yview+30);
draw_sprite(sprModHUD,Player.wepmod3,view_xview+38,view_yview+30);
draw_sprite(sprModHUD,Player.wepmod4,view_xview+48,view_yview+30);

if Player.wep_type[Player.wep] != 0
{
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+42,view_yview+22,string(Player.ammo[Player.wep_type[Player.wep]]))
draw_text(view_xview+43,view_yview+22,string(Player.ammo[Player.wep_type[Player.wep]]))
draw_text(view_xview+43,view_yview+21,string(Player.ammo[Player.wep_type[Player.wep]]))

draw_set_color(c_white)
if Player.ammo[Player.wep_type[Player.wep]] <= Player.typ_ammo[Player.wep_type[Player.wep]]
draw_set_color(c_red)
if Player.ammo[Player.wep_type[Player.wep]] = 0
draw_set_color(c_dkgray)
draw_text(view_xview+42,view_yview+21,string(Player.ammo[Player.wep_type[Player.wep]]))
}



//EXPERIENCE BAR
draw_set_halign(fa_center)
if Player.skillpoints > 0
draw_sprite(sprExpBarLevel,0,view_xview+4,view_yview+4)
draw_sprite(sprExpBar,(Player.rad/(60*Player.level))*16,view_xview+4,view_yview+4)
draw_set_color(c_black)
draw_text(view_xview+11,view_yview+17-string_height("A")/2,string(Player.level))
draw_text(view_xview+12,view_yview+17-string_height("A")/2,string(Player.level))
draw_text(view_xview+12,view_yview+16-string_height("A")/2,string(Player.level))
draw_set_color(c_white)
draw_text(view_xview+11,view_yview+16-string_height("A")/2,string(Player.level))



//BUSINES HOG MONYRAD
if Player.race=20
{

txt = "RADS: "+string(Player.rad);
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+1,view_yview+50,string(txt))
draw_text(view_xview+1,view_yview+51,string(txt))
draw_text(view_xview+2,view_yview+51,string(txt))
draw_set_color(c_white)
draw_text(view_xview+2,view_yview+50,string(txt))

}

//GOOD O'L HUMPHRY SKILL
if Player.race=26
{

txt = string(Player.HumphrySkill);



draw_set_halign(fa_left)

draw_sprite(sprHumphrySkill,0,view_xview+1,view_yview+66)
draw_set_color(c_black)
draw_text(view_xview+14,view_yview+68,string(txt))
draw_text(view_xview+14,view_yview+69,string(txt))
draw_text(view_xview+15,view_yview+69,string(txt))
draw_set_color(c_white)
draw_text(view_xview+15,view_yview+68,string(txt))



}

//Eagle eyes weptier
if Player.skill_got[19]//eagle eyes
{

txt = "#TIER: "+string(Player.wep_area[Player.wep]);
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+1,view_yview+50,string(txt))
draw_text(view_xview+1,view_yview+51,string(txt))
draw_text(view_xview+2,view_yview+51,string(txt))
draw_set_color(c_white)
draw_text(view_xview+2,view_yview+50,string(txt))

}


var ammoheight;
ammoheight=38;//34


//AMMO ICONS
img = 0
if Player.wep_type[Player.bwep] = 1 img = 1
if Player.wep_type[Player.wep] = 1 or (Player.race = 7 and Player.wep_type[Player.bwep] = 1) img = 2
draw_sprite(sprBulletIconBG,img,view_xview+2,view_yview+ammoheight)
draw_sprite(sprBulletIcon,7-ceil((Player.ammo[1]/Player.typ_amax[1])*7),view_xview+2,view_yview+ammoheight)//36

img = 0
if Player.wep_type[Player.bwep] = 2 img = 1
if Player.wep_type[Player.wep] = 2 or (Player.race = 7 and Player.wep_type[Player.bwep] = 2) img = 2
draw_sprite(sprShotIconBG,img,view_xview+12,view_yview+ammoheight)
draw_sprite(sprShotIcon,7-ceil((Player.ammo[2]/Player.typ_amax[2])*7),view_xview+12,view_yview+ammoheight)

img = 0
if Player.wep_type[Player.bwep] = 3 img = 1
if Player.wep_type[Player.wep] = 3 or (Player.race = 7 and Player.wep_type[Player.bwep] = 3) img = 2
draw_sprite(sprBoltIconBG,img,view_xview+22,view_yview+ammoheight)
draw_sprite(sprBoltIcon,7-ceil((Player.ammo[3]/Player.typ_amax[3])*7),view_xview+22,view_yview+ammoheight)

img = 0
if Player.wep_type[Player.bwep] = 4 img = 1
if Player.wep_type[Player.wep] = 4 or (Player.race = 7 and Player.wep_type[Player.bwep] = 4) img = 2
draw_sprite(sprExploIconBG,img,view_xview+32,view_yview+ammoheight)
draw_sprite(sprExploIcon,7-ceil((Player.ammo[4]/Player.typ_amax[4])*7),view_xview+32,view_yview+ammoheight)

img = 0
if Player.wep_type[Player.bwep] = 5 img = 1
if Player.wep_type[Player.wep] = 5 or (Player.race = 7 and Player.wep_type[Player.bwep] = 5) img = 2
draw_sprite(sprEnergyIconBG,img,view_xview+42,view_yview+ammoheight)
draw_sprite(sprEnergyIcon,7-ceil((Player.ammo[5]/Player.typ_amax[5])*7),view_xview+42,view_yview+ammoheight)


//LOW AMMO WARNING

if Player.ammo[Player.wep_type[Player.wep]] <= Player.typ_ammo[Player.wep_type[Player.wep]] and sin(wave) > 0 and Player.drawempty > 0
{
if Player.drawempty = 10 and Player.ammo[Player.wep_type[Player.wep]] > Player.typ_ammo[Player.wep_type[Player.wep]]-Player.wep_cost[Player.wep]
snd_play(Player.snd_lowa)
Player.drawempty -= 1

txt = "LOW "+string(Player.typ_name[Player.wep_type[Player.wep]])
if Player.ammo[Player.wep_type[Player.wep]] < Player.wep_cost[Player.wep]
{
if Player.ammo[Player.wep_type[Player.wep]] > 0
txt = "NOT ENOUGH "+string(Player.typ_name[Player.wep_type[Player.wep]])
else
txt = "EMPTY"
}
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+55,view_yview+34,string(txt))
draw_text(view_xview+55,view_yview+35,string(txt))
draw_text(view_xview+54,view_yview+35,string(txt))
draw_set_color(c_red)
draw_text(view_xview+54,view_yview+34,string(txt))
}

//SHOW ME SOME TESTING VARIABLES
if UberCont.public=0{
if ( keyboard_check(ord("C")) )
{

with UberCont
{
draw_text_colour(view_xview+view_wview+string_width(txttime),view_yview+view_hview+string_height(txttime)-1,txttime,c_white
,c_white,c_white,c_white,1);

draw_text_colour(view_xview+view_wview+string_width(txttime),view_yview+view_hview+string_height(txttime)+1,txttime,c_black
,c_black,c_black,c_black,1);
}


txt = " skin"+string(Player.bskin);

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+55,view_yview+34,string(txt))
draw_text(view_xview+55,view_yview+35,string(txt))
draw_text(view_xview+54,view_yview+35,string(txt))
draw_set_color(c_white)
draw_text(view_xview+54,view_yview+34,string(txt))


txt= "##freezeframe400"+string(Player.freezeframe400);

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+55,view_yview+34,string(txt))
draw_text(view_xview+55,view_yview+35,string(txt))
draw_text(view_xview+54,view_yview+35,string(txt))
draw_set_color(c_white)
draw_text(view_xview+54,view_yview+34,string(txt))

txt= "####Player.ultra_got[75] #"+string(Player.ultra_got[75]);

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+55,view_yview+34,string(txt))
draw_text(view_xview+55,view_yview+35,string(txt))
draw_text(view_xview+54,view_yview+35,string(txt))
draw_set_color(c_white)
draw_text(view_xview+54,view_yview+34,string(txt))

txt= "######Player.ultra_got[76] #"+string(Player.ultra_got[76]);

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+55,view_yview+34,string(txt))
draw_text(view_xview+55,view_yview+35,string(txt))
draw_text(view_xview+54,view_yview+35,string(txt))
draw_set_color(c_white)
draw_text(view_xview+54,view_yview+34,string(txt))

txt= "########skillsChosen #"+string(Player.skillsChosen);

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+55,view_yview+34,string(txt))
draw_text(view_xview+55,view_yview+35,string(txt))
draw_text(view_xview+54,view_yview+35,string(txt))
draw_set_color(c_white)
draw_text(view_xview+54,view_yview+34,string(txt))

txt= "###########Player.ultra_got[79] #"+string(Player.ultra_got[79]);

draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+55,view_yview+34,string(txt))
draw_text(view_xview+55,view_yview+35,string(txt))
draw_text(view_xview+54,view_yview+35,string(txt))
draw_set_color(c_white)
draw_text(view_xview+54,view_yview+34,string(txt))


}}

//LOW HP

if Player.my_health <= 4 and Player.my_health != Player.maxhealth and sin(wave) > 0 and Player.drawlowhp > 0
{
Player.drawlowhp -= 1
txt = "LOW HP"
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(view_xview+111,view_yview+7,string(txt))
draw_text(view_xview+111,view_yview+8,string(txt))
draw_text(view_xview+110,view_yview+8,string(txt))
draw_set_color(c_red)
draw_text(view_xview+110,view_yview+7,string(txt))
}

//SKILL ICONS
dir = 0
dix = 0
repeat(Player.maxskill+1)
{
if Player.skill_got[dir] = 1
{
draw_sprite_ext(sprSkillIconHUD,dir,view_xview+view_wview-12-16*dix,view_yview+13,1,1,0,c_black,1)
draw_sprite_ext(sprSkillIconHUD,dir,view_xview+view_wview-12-16*dix,view_yview+12,1,1,0,c_white,1)
dix += 1
}
dir += 1
}
//ULTRA ICON
dir=1;
dix=1;
repeat(Player.maxultra)
{

    if Player.ultra_got[dir]
    {
    if !(dir=79 && Player.race=21){//Horror don't draw skeleton's ultra
    draw_sprite_ext(sprUltraIconHUD,dir,view_xview+view_wview-12-16*dix,view_yview+24,1,1,0,c_black,1);
    draw_sprite_ext(sprUltraIconHUD,dir,view_xview+view_wview-12-16*dix,view_yview+26,1,1,0,c_white,1);
    }
    dix+=1
    }
dir+=1;
}
if Player.skeletonlives>0
{
    repeat(Player.skeletonlives)
    {
    dix++;
    draw_sprite_ext(sprYungCuzLives,1,view_xview+view_wview-12-16*dix,view_yview+38,1,1,0,c_white,1);
    draw_sprite_ext(sprYungCuzLives,1,view_xview+view_wview-12-16*dix,view_yview+40,1,1,0,c_black,1);
    }
}

}
else if !instance_exists(GenCont) && !instance_exists(PlayerSpawn)
{
scrDrawGameOver()
}


draw_set_halign(fa_center)
draw_set_font(fntM)

if instance_exists(Player){

if instance_exists(WepPickup)
{

if point_distance(Player.x,Player.y,instance_nearest(Player.x,Player.y,WepPickup).x,instance_nearest(Player.x,Player.y,WepPickup).y)<35
{
//

//PICKUP STUFF
if instance_exists(Player.targetPickup)
{

with Player.targetPickup
{

draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)
if type = 1{
draw_sprite(sprBulletIconBG,2,x+7,y-21)
draw_sprite(sprBulletIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
if type = 2{
draw_sprite(sprShotIconBG,2,x+7,y-21)
draw_sprite(sprShotIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
if type = 3{
draw_sprite(sprBoltIconBG,2,x+7,y-21)
draw_sprite(sprBoltIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
if type = 4{
draw_sprite(sprExploIconBG,2,x+7,y-21)
draw_sprite(sprExploIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}
if type = 5{
draw_sprite(sprEnergyIconBG,2,x+7,y-21)
draw_sprite(sprEnergyIcon,7-ceil((Player.ammo[type]/Player.typ_amax[type])*7),x+7,y-21)}

draw_set_color(c_black)
draw_text(x,y-30,string(name))
draw_text(x+1,y-30,string(name))
draw_text(x+1,y-31,string(name))
draw_set_color(c_white)
draw_text(x,y-31,string(name))
//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)

}
}
}}

//VENUS CAR
with CarVenusFixed
{
if place_meeting(x,y,Player)
{
draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

draw_set_color(c_black)
draw_text(x,y-30,string(name))
draw_text(x+1,y-30,string(name))
draw_text(x+1,y-31,string(name))
draw_set_color(c_white)
draw_text(x,y-31,string(name))
//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
}
}

with WeaponMod
{
if place_meeting(x,y,Player)
{
draw_sprite(sprEPickup,UberCont.opt_gamepad,x+8,y)

draw_set_color(c_black)
draw_text(x+16,y,string(name))
draw_text(x+17,y,string(name))
draw_text(x+17,y-1,string(name))
draw_set_color(c_white)
draw_text(x+16,y-1,string(name))
//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
}
}

with ProtoStatue
{
if place_meeting(x,y,Player)
{
draw_sprite(sprEPickup,UberCont.opt_gamepad,x+8,y)


draw_set_color(c_black)
draw_text(x+16,y,"CLOSE CROWNVAULT")
draw_text(x+17,y,"CLOSE CROWNVAULT")
draw_text(x+17,y-1,"CLOSE CROWNVAULT")
draw_set_color(c_white)
draw_text(x+16,y-1,"CLOSE CROWNVAULT")
//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
}
}

}
//grid
//with Floor
//draw_rectangle(x,y,x+32,y+32,1)
}
