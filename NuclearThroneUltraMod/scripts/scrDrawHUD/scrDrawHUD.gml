function scrDrawHUD() {
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
	draw_text(median(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-10-string_width(string_hash_to_newline(mytext))/2,__view_get( e__VW.XView, 0 )+10+string_width(string_hash_to_newline(mytext))/2,x),median(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30+1,__view_get( e__VW.YView, 0 )+20+1,y)+1,string_hash_to_newline(string(mytext)))
	draw_text(median(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-10-string_width(string_hash_to_newline(mytext))/2,__view_get( e__VW.XView, 0 )+10+string_width(string_hash_to_newline(mytext))/2,x)+1,median(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30+1,__view_get( e__VW.YView, 0 )+20+1,y)+1,string_hash_to_newline(string(mytext)))
	draw_text(median(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-10-string_width(string_hash_to_newline(mytext))/2,__view_get( e__VW.XView, 0 )+10+string_width(string_hash_to_newline(mytext))/2,x)+1,median(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30+1,__view_get( e__VW.YView, 0 )+20+1,y),string_hash_to_newline(string(mytext)))
	draw_set_color(colour)
	draw_text(median(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-10-string_width(string_hash_to_newline(mytext))/2,__view_get( e__VW.XView, 0 )+10+string_width(string_hash_to_newline(mytext))/2,x),median(__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30,__view_get( e__VW.YView, 0 )+20,y),string_hash_to_newline(string(mytext)))
	}
	}

	with LevelUp
	draw_sprite(sprite_index,-1,x,y)

	if instance_exists(Player)
	{
	//DRAW THE HUD HERE


	//HEALTH BAR
	draw_sprite(sprHealthBar,2,__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+4)
	if Player.maxhealth!=0{
	draw_sprite_ext(sprHealthFill,2,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+7,max(0,84*(Player.lsthealth/Player.maxhealth)),1,0,c_white,1)
	draw_sprite_ext(sprHealthFill,1,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+7,max(0,84*(Player.my_health/Player.maxhealth)),1,0,c_white,1)

	if ((Player.sprite_index = Player.spr_hurt and Player.image_index < 1 and !instance_exists(Portal)) or Player.lsthealth < Player.my_health) and !instance_exists(GenCont) and !instance_exists(LevCont)
	draw_sprite_ext(sprHealthFill,0,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+7,max(0,84*(Player.my_health/Player.maxhealth)),1,0,c_white,1)
	}
	draw_set_font(fntM)


	//VIKING ARMOUR
	var armour = Player.armour;
	var dir=0;
	repeat(armour)
	{
	dir++;
	draw_sprite(sprArmour,0,__view_get( e__VW.XView, 0 )+94+(15*dir),__view_get( e__VW.YView, 0 )+4);
	}


	//ROGUE AMMO
	if Player.race=22
	{
	if Player.ultra_got[85]=1
	{
	draw_sprite(sprRogueAmmoHUDTB,0,__view_get( e__VW.XView, 0 )+116,__view_get( e__VW.YView, 0 )+11)
	draw_sprite(sprRogueAmmoHUDTB,Player.rogueammo,__view_get( e__VW.XView, 0 )+116,__view_get( e__VW.YView, 0 )+11)
	}
	else
	{
	draw_sprite(sprRogueAmmoHUD,0,__view_get( e__VW.XView, 0 )+116,__view_get( e__VW.YView, 0 )+11)
	draw_sprite(sprRogueAmmoHUD,Player.rogueammo,__view_get( e__VW.XView, 0 )+116,__view_get( e__VW.YView, 0 )+11)
	}

	}



	//CROWNS

	draw_set_halign(fa_left)

	if Player.crown > 1 and !instance_exists(LevCont)
	{
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2+1,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2+1,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-string_height(string_hash_to_newline("C"))-2,string_hash_to_newline(string(Player.crown_name[Player.crown]))/*+"#"+string(Player.crown_text[Player.crown])*/)
	draw_set_valign(fa_top)
	}

	//HEALTH TEXT
	draw_set_halign(fa_center)
	if (!((Player.sprite_index = Player.spr_hurt and Player.image_index < 1 and !instance_exists(Portal)) or Player.lsthealth < Player.my_health) or sin(wave) > 0) or instance_exists(GenCont) or instance_exists(LevCont)
	{
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+23+44,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	draw_text(__view_get( e__VW.XView, 0 )+23+45,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	draw_text(__view_get( e__VW.XView, 0 )+23+45,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+23+44,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(Player.my_health)+"/"+string(Player.maxhealth)))
	}
	var wepcolour = c_white;


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
	else if (scrCheckGold(Player.cwep))
	col=make_colour_rgb(223,201,134);//gold

	if round(Player.area/2) = Player.area/2 or col = c_white or Player.ccurse==1 or instance_exists(GenCont) or instance_exists(LevCont)
	{//42 more to -->
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+112,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+15,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+17,col,1)
	}

	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+16,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,wid*min(Player.wep_load[Player.cwep],Player.creload/Player.wep_load[Player.cwep])),14,__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+16,c_white,0.2)

	if Player.wep_type[Player.cwep] != 0
	{
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	var cAmmo = string(round(Player.ammo[Player.wep_type[Player.cwep]]));
	draw_text(__view_get( e__VW.XView, 0 )+130,__view_get( e__VW.YView, 0 )+22,cAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+131,__view_get( e__VW.YView, 0 )+22,cAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+131,__view_get( e__VW.YView, 0 )+21,cAmmo)
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
	if Player.ammo[Player.wep_type[Player.cwep]] <= 0
	draw_set_color(c_dkgray)
	draw_text(__view_get( e__VW.XView, 0 )+130,__view_get( e__VW.YView, 0 )+21,cAmmo)
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
	else if (scrCheckGold(Player.bwep))
	col=make_colour_rgb(223,201,134);//gold

	if round(Player.area/2) = Player.area/2 or col = c_white or Player.bcurse==1 or instance_exists(GenCont) or instance_exists(LevCont)
	{
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+67,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+69,__view_get( e__VW.YView, 0 )+16,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+15,col,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+17,col,1)
	}

	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,c_black,1)


	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,wid*min(Player.wep_load[Player.bwep],Player.breload/Player.wep_load[Player.bwep])),14,__view_get( e__VW.XView, 0 )+68,__view_get( e__VW.YView, 0 )+16,c_white,0.2)

	if Player.wep_type[Player.bwep] != 0
	{
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	var bAmmo = string(round(Player.ammo[Player.wep_type[Player.bwep]]))
	draw_text(__view_get( e__VW.XView, 0 )+86,__view_get( e__VW.YView, 0 )+22,bAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+87,__view_get( e__VW.YView, 0 )+22,bAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+87,__view_get( e__VW.YView, 0 )+21,bAmmo)
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
	if Player.ammo[Player.wep_type[Player.bwep]] <= 0
	draw_set_color(c_dkgray)
	draw_text(__view_get( e__VW.XView, 0 )+86,__view_get( e__VW.YView, 0 )+21,bAmmo)
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
	else if (scrCheckGold(Player.wep))
	wepcolour=make_colour_rgb(223,201,134);//gold

	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+25,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+23,__view_get( e__VW.YView, 0 )+16,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+17,wepcolour,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+15,wepcolour,1)

	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,wid,14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+16,c_black,1)
	draw_sprite_part_smart(spr,1,sprite_get_xoffset(spr),sprite_get_yoffset(spr)-8,max(0,wid*min(Player.wep_load[Player.wep],Player.reload/Player.wep_load[Player.wep])),14,__view_get( e__VW.XView, 0 )+24,__view_get( e__VW.YView, 0 )+16,c_white,0.2)

	//WEAPON MODS!
	draw_sprite(sprModHUD,Player.wepmod1,__view_get( e__VW.XView, 0 )+18,__view_get( e__VW.YView, 0 )+30);
	draw_sprite(sprModHUD,Player.wepmod2,__view_get( e__VW.XView, 0 )+28,__view_get( e__VW.YView, 0 )+30);
	draw_sprite(sprModHUD,Player.wepmod3,__view_get( e__VW.XView, 0 )+38,__view_get( e__VW.YView, 0 )+30);
	draw_sprite(sprModHUD,Player.wepmod4,__view_get( e__VW.XView, 0 )+48,__view_get( e__VW.YView, 0 )+30);

	if Player.wep_type[Player.wep] != 0
	{
	var aAmmo = string(round(Player.ammo[Player.wep_type[Player.wep]]))
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+22,aAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+43,__view_get( e__VW.YView, 0 )+22,aAmmo)
	draw_text(__view_get( e__VW.XView, 0 )+43,__view_get( e__VW.YView, 0 )+21,aAmmo)

	draw_set_color(c_white)
	if Player.ammo[Player.wep_type[Player.wep]] <= Player.typ_ammo[Player.wep_type[Player.wep]]
	draw_set_color(c_red)
	if Player.ammo[Player.wep_type[Player.wep]] <= 0
	draw_set_color(c_dkgray)
	draw_text(__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+21,aAmmo)
	}



	//EXPERIENCE BAR
	draw_set_halign(fa_center)
	if Player.skillpoints > 0
	draw_sprite(sprExpBarLevel,0,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+4)
	with Player
	{
		var maxRad = GetPlayerMaxRad();	
	}
	draw_sprite(sprExpBar,(Player.rad/maxRad)*16,__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+4)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+11,__view_get( e__VW.YView, 0 )+17-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(Player.level)))
	draw_text(__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+17-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(Player.level)))
	draw_text(__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+16-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(Player.level)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+11,__view_get( e__VW.YView, 0 )+16-string_height(string_hash_to_newline("A"))/2,string_hash_to_newline(string(Player.level)))



	//BUSINES HOG MONYRAD
	/*
	if Player.race=20
	{
	var rads = 0;
	with Player
	{
		rads = floor((rad/GetPlayerMaxRad())*100);
	}
	txt = "RADS: "+string(rads)+"%";
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+51,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+52,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+53,string_hash_to_newline(string(txt)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+51,string_hash_to_newline(string(txt)))

	}*/

	//GOOD O'L HUMPHRY SKILL
	if Player.race=26
	{

	txt = string(Player.HumphrySkill);



	draw_set_halign(fa_left)

	draw_sprite(sprHumphrySkill,0,__view_get( e__VW.XView, 0 )+1,__view_get( e__VW.YView, 0 )+66)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+69,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+15,__view_get( e__VW.YView, 0 )+69,string_hash_to_newline(string(txt)))
	if Player.HumphryTB=1
	draw_set_color(c_red)
	else
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+15,__view_get( e__VW.YView, 0 )+68,string_hash_to_newline(string(txt)))

	draw_set_color(c_white)
	}


	var ammoheight;
	ammoheight=38;//34


	//AMMO ICONS
	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 1 && Player.wep_type[Player.bwep] != 1)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 1 or (Player.race = 7 and Player.wep_type[Player.bwep] = 1)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 1
	{img = 1}
	draw_sprite(sprBulletIconBG,img,__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprBulletIcon,7-round((Player.ammo[1]/Player.typ_amax[1])*7),__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+ammoheight)//36

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 2 && Player.wep_type[Player.bwep] != 2)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 2 or (Player.race = 7 and Player.wep_type[Player.bwep] = 2)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 2
	{img = 1}
	draw_sprite(sprShotIconBG,img,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprShotIcon,7-round((Player.ammo[2]/Player.typ_amax[2])*7),__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+ammoheight)

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 3 && Player.wep_type[Player.bwep] != 3)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 3 or (Player.race = 7 and Player.wep_type[Player.bwep] = 3)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 3
	{img = 1}
	draw_sprite(sprBoltIconBG,img,__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprBoltIcon,7-round((Player.ammo[3]/Player.typ_amax[3])*7),__view_get( e__VW.XView, 0 )+22,__view_get( e__VW.YView, 0 )+ammoheight)

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 4 && Player.wep_type[Player.bwep] != 4)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 4 or (Player.race = 7 and Player.wep_type[Player.bwep] = 4)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 4 
	{img = 1}
	draw_sprite(sprExploIconBG,img,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprExploIcon,7-round((Player.ammo[4]/Player.typ_amax[4])*7),__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.YView, 0 )+ammoheight)

	img = 0
	if (Player.race == 26 && instance_exists(HumphryDiscipline) && Player.wep_type[Player.wep] != 5 && Player.wep_type[Player.bwep] != 5)
	{
		img = 3
	}
	else if Player.wep_type[Player.wep] = 5 or (Player.race = 7 and Player.wep_type[Player.bwep] = 5)
	{img = 2}
	else if Player.wep_type[Player.bwep] = 5 
	{img = 1}
	draw_sprite(sprEnergyIconBG,img,__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+ammoheight)
	draw_sprite(sprEnergyIcon,7-round((Player.ammo[5]/Player.typ_amax[5])*7),__view_get( e__VW.XView, 0 )+42,__view_get( e__VW.YView, 0 )+ammoheight)

	//LOW AMMO WARNING

	if Player.wep_type[Player.wep] > 0 && Player.ammo[Player.wep_type[Player.wep]] <= Player.typ_ammo[Player.wep_type[Player.wep]] and sin(wave) > 0 and Player.drawempty > 0
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
	draw_text(__view_get( e__VW.XView, 0 )+55,__view_get( e__VW.YView, 0 )+34,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+55,__view_get( e__VW.YView, 0 )+35,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+54,__view_get( e__VW.YView, 0 )+35,string_hash_to_newline(string(txt)))
	draw_set_color(c_red)
	draw_text(__view_get( e__VW.XView, 0 )+54,__view_get( e__VW.YView, 0 )+34,string_hash_to_newline(string(txt)))
	}


	//LOW HP

	if Player.my_health <= 4 and Player.my_health != Player.maxhealth and sin(wave) > 0 and Player.drawlowhp > 0
	{
	Player.drawlowhp -= 1
	txt = "LOW HP"
	draw_set_halign(fa_left)
	draw_set_color(c_black)
	draw_text(__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+111,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(txt)))
	draw_text(__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+8,string_hash_to_newline(string(txt)))
	draw_set_color(c_red)
	draw_text(__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+7,string_hash_to_newline(string(txt)))
	}

	//SKILL ICONS
	dir = 0
	dix = 0
	repeat(Player.maxskill+1)
	{
	if Player.skill_got[dir] = 1
	{
	draw_sprite_ext(sprSkillIconHUD,dir,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-12-16*dix,__view_get( e__VW.YView, 0 )+13,1,1,0,c_black,1)
	draw_sprite_ext(sprSkillIconHUD,dir,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-12-16*dix,__view_get( e__VW.YView, 0 )+12,1,1,0,c_white,1)
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
	    draw_sprite_ext(sprUltraIconHUD,dir,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-12-16*dix,__view_get( e__VW.YView, 0 )+24,1,1,0,c_black,1);
	    draw_sprite_ext(sprUltraIconHUD,dir,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-12-16*dix,__view_get( e__VW.YView, 0 )+26,1,1,0,c_white,1);
	    }
	    dix+=1
	    }
	dir+=1;
	}
	if Player.skeletonlives>0
	{
		dix --;
	    repeat(Player.skeletonlives)
	    {
	    dix++;
		draw_sprite_ext(sprExtraLivesHud,1,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-16*dix,__view_get( e__VW.YView, 0 )+40,1,1,0,c_white,1);
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

//wep_area[Player.wep]
/*
	draw_set_color(c_black)
	draw_text(x,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-31,string_hash_to_newline(string(name)))
	draw_set_color(c_white)
	draw_text(x,y-31,string_hash_to_newline(string(name)))*/
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
		//draw_set_halign(fa_left)
	var ny = y-30;
	//Eagle eyes weptier
		if Player.skill_got[19]//eagle eyes
		{
			var tier = string(wep_area[wep]);
			var spaceBetweenStarAndText = 4;
			var ty = y-40;
			var tierSprite = sprWepTier;
			var sw = string_width(tier)+spaceBetweenStarAndText;
			var tx = x-(sw*0.25)//string_width(string_hash_to_newline(string(name)));
			var txa = tx + sw;
			draw_set_color(c_black)
			draw_text(x,ny,string_hash_to_newline(string(name)))
			draw_text(x+1,ny,string_hash_to_newline(string(name)))
			draw_text(tx,ty,tier)
			draw_text(tx+1,ty,tier)
			draw_text(tx+1,ty-1,tier)
			draw_text(x+1,ny-1,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,ny-1,string_hash_to_newline(string(name)))
			draw_text(tx,ty-1,tier)
			draw_sprite(tierSprite,0,txa,ty+1);
		}
		else
		{
			draw_set_color(c_black)
			draw_text(x,ny,string_hash_to_newline(string(name)))
			draw_text(x+1,ny,string_hash_to_newline(string(name)))
			draw_text(x+1,ny-1,string_hash_to_newline(string(name)))
			draw_set_color(c_white)
			draw_text(x,ny-1,string_hash_to_newline(string(name)))
		}
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
	draw_text(x,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-31,string_hash_to_newline(string(name)))
	draw_set_color(c_white)
	draw_text(x,y-31,string_hash_to_newline(string(name)))
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
	}
	}

	//VENUS CAR
	with BigMushroom
	{
	if place_meeting(x,y,Player)
	{
	draw_sprite(sprEPickup,UberCont.opt_gamepad,x,y-7)

	draw_set_color(c_black)
	draw_text(x,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-30,string_hash_to_newline(string(name)))
	draw_text(x+1,y-31,string_hash_to_newline(string(name)))
	draw_set_color(c_white)
	draw_text(x,y-31,string_hash_to_newline(string(name)))
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
	}
	}

	with WeaponMod
	{
	if place_meeting(x,y,Player)
	{
	draw_sprite(sprEPickup,UberCont.opt_gamepad,x+8,y)

	draw_set_color(c_black)
	draw_text(x+16,y,string_hash_to_newline(string(name)))
	draw_text(x+17,y,string_hash_to_newline(string(name)))
	draw_text(x+17,y-1,string_hash_to_newline(string(name)))
	draw_set_color(c_white)
	draw_text(x+16,y-1,string_hash_to_newline(string(name)))
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
	}
	}

	with ProtoStatue
	{
	if place_meeting(x,y,Player)
	{
	draw_sprite(sprEPickup,UberCont.opt_gamepad,x+8,y)


	draw_set_color(c_black)
	draw_text(x+16,y,string_hash_to_newline("CLOSE CROWNVAULT"))
	draw_text(x+17,y,string_hash_to_newline("CLOSE CROWNVAULT"))
	draw_text(x+17,y-1,string_hash_to_newline("CLOSE CROWNVAULT"))
	draw_set_color(c_white)
	draw_text(x+16,y-1,string_hash_to_newline("CLOSE CROWNVAULT"))
	//draw_sprite(sprAmmoPointer,0,view_xview+5-10+type*10,view_yview+32+12)
	}
	}

	}
	//grid
	//with Floor
	//draw_rectangle(x,y,x+32,y+32,1)
	}


	if instance_exists(enemy) && instance_number(enemy) < 2
	{
		var xx = enemy.x;
		var yy = enemy.y;
		var vx = camera_get_view_x(view_camera[0]);
		var vw = camera_get_view_width(view_camera[0]);
		var shouldDraw = false;
		if xx >  vx + vw
		{
			xx = vx + vw-5;
			shouldDraw = true;
		}
		else if xx < vx
		{
			xx = vx+5;
			shouldDraw = true;
		}
		var vy = camera_get_view_y(view_camera[0]);
		var vh = camera_get_view_height(view_camera[0]);
		if yy >  vy + vh
		{
			yy = vy + vh-5;
			shouldDraw = true;
		}
		else if yy < vy
		{
			yy = vy+5;
			shouldDraw = true;
		}
		if shouldDraw
			draw_sprite(sprLastEnemyIndicator,0,xx,yy);
	
	}
}
