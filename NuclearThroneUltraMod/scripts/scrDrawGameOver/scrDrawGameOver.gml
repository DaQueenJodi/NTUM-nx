function scrDrawGameOver() {
	//GAME OVER

	draw_set_font(fntM)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	gameover = "";
	var topText = "YOU DID NOT REACH THE NUCLEAR THRONE";
	if BackCont.loops > 9
	{
		topText = choose(
		"WORLD RECORD!?","BRUH WHAT WAS THIS SETUP?",
		"PLEASE NERF THIS SETUP","ABSOLUTLY INSANE","WORLD RECORD!","DOUBLE DIGIT LOOP!"
		);	
	}
	if BackCont.loops > 7
	{
		topText = choose(
		"DID YOU RECORD THAT?","ABSOLUTLY CRACKED AT THE GAME",
		"YOU DESTROYED THE NUCLEAR THRONE","YOU LOOPED","AWESOME!","THAT WAS A GOOD RUN","GREAT WORK","AMAZING","ITS A LOOP!","VERY WELL PLAYED",
		"MORE THAN ONE LOOP!?","GREAT NOW DO IT AGAIN!","AMAZING RUN!","CRACKED","ABOVE AND BEYOND","YO WTF 8 LOOPS??","BRUH WHAT WAS THIS SETUP?",
		"PLEASE NERF THIS SETUP","ABSOLUTLY INSANE","WOOOOOO"
		);	
	}
	else if BackCont.loops > 1
	{
		topText = choose(
		"GREAT WORK","WELL PLAYED","WELL DONE",
		"YOU DESTROYED THE NUCLEAR THRONE","YOU LOOPED","AWESOME!","THAT WAS A GOOD RUN","GREAT WORK","AMAZING","ITS A LOOP!","VERY WELL PLAYED",
		"MORE THAN ONE LOOP!?","GREAT NOW DO IT AGAIN!","AMAZING RUN!","CRACKED","ABOVE AND BEYOND","YEA!"
		);	
	}
	if BackCont.loops > 0
	{
		topText = choose(
		"YOU DESTROYED THE NUCLEAR THRONE","YOU LOOPED","AWESOME!","THAT WAS A GOOD RUN","GREAT WORK","AMAZING","ITS A LOOP!",
		"YOU DESTROYED THE NUCLEAR THRONE","YOU DESTROYED THE NUCLEAR THRONE","VERY WELL PLAYED"
		);
	}
	else if (BackCont.area > 4 && BackCont.area != 10)
	{
		topText = choose(
		"GREAT WORK","NICE TRY","WELL PLAYED","WELL DONE","GREAT WORK",
		"YOU DID NOT REACH THE NUCLEAR THRONE","YOU ARE AWESOME","YOU ARE GREAT",
		"THAT WAS A GOOD RUN","YOU DID NOT REACH THE NUCLEAR THRONE","YOU DID NOT REACH THE NUCLEAR THRONE"
		);
	} else
	{
		topText = choose(
			"NICE TRY","YOU DID NOT REACH THE NUCLEAR THRONE","YOU DID NOT REACH THE NUCLEAR THRONE",
			"BETTER LUCK NEXT TIME","YOU DID NOT REACH THE NUCLEAR THRONE","MISSION FAILED","TRY AGAIN"
			);
	}
	var 
	if (UberCont.opt_gamemode != 25 && UberCont.opt_gamemode != 8)
		gameover = topText+"##KILLS: "+string(BackCont.kills)+"#LEVEL: "+string(BackCont.area)+"_"+string(BackCont.subarea)+"#DIFFICULTY: "+string(BackCont.hard)
	else if (UberCont.opt_gamemode == 25)
	{
		gameover = "KILLS: "+string(BackCont.kills)+"#LEVEL: "+string(BackCont.area)+"_"+string(BackCont.subarea)+"#DIFFICULTY: "+string(BackCont.hard)
	}
	if BackCont.loops > 0 && UberCont.opt_gamemode != 8
	gameover += "#LOOPS: "+string(BackCont.loops)
	/*
	if UberCont.opt_shake != 1
	gameover += "##PLAYING WITH "+string(round(UberCont.opt_shake*100))+"% SCREENSHAKE"
	if UberCont.opt_freeze != 1
	gameover += "##PLAYING WITH "+string(round(UberCont.opt_freeze*100))+"% FREEZEFRAMES"
	*/
/*
	if UberCont.public = 0
	gameover += "##MODDED EARLY ACCESS DEVELOPMENT BUILD"
	if UberCont.public = 1
	gameover += "##MODDED EARLY ACCESS BUILD";
*/
	gameover += "##GAME MODE : "+UberCont.gamemode[UberCont.opt_gamemode];
	
	if (UberCont.opt_gamemode == 8)
	{
		gameover += "##TIME SURVIVED: " + VanFan.txttime;
	}
	
	if gameovertime > 30
	{
		if UberCont.canRestart
		{
			gameover += "##[R] QUICK RESTART#[LEFT CLICK] MENU";
		}
		else
		{
			gameover += "##[LEFT CLICK] MENU";
		}
	}


	if (UberCont.canRestart && keyboard_check_pressed(ord("R")) or KeyCont.key_back[0] = 1) and gameovertime > 30
	{//QUICK RESTART
	with SurvivalWave
		instance_destroy();
	snd_play(sndMutant0Cnfm)
	race = UberCont.racepick
	crown = 1
	with all
	{
	if id != UberCont.id and persistent = true
	{
	persistent = false
	instance_destroy()
	}
	}
	scrRaces()
	scrCrowns()
	var ranChar = false;
	with Player
		nochest = 0;
	if race = 0 || UberCont.opt_gamemode == 23
	{
		ranChar = true;
		do race = ceil(random(racemax)) until race_have[race] = 1
	}
	if crown = 0
	crown = ceil(random(crownmax))
	with instance_create(x,y,GenCont)
	{race = other.race
	crown = other.crown}
	instance_create(x,y,Player)
	with MusCont
		instance_destroy()
	instance_create(0,0,MusCont)
	
	with Player
	{
		randomlySelected = ranChar;
		restarted = true;	
	}
	debug("GAMEOVER RESTART");
	
	room_restart()
	exit;
	}
	if (keyboard_check_pressed(vk_enter) or mouse_check_button_pressed(mb_left)) and gameovertime > 40 && !instance_exists(PlayerSpawn)
	{
		debug("GAMEOVER QUIT");
		with UberCont
		{
			if opt_gamemode == 26 || opt_gamemode == 27
			{
				opt_gamemode = 0;	
			}
		}
	//BACK TO MENU
	snd_play(sndRestart)
	scrRestart()
	}
	if gameovertime > 20
	{
	draw_set_color(c_black)
	draw_set_alpha(0.4)
	draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
	draw_set_alpha(1)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A"))+1,string_hash_to_newline(string(gameover)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A"))+1,string_hash_to_newline(string(gameover)))
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A")),string_hash_to_newline(string(gameover)))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-string_height(string_hash_to_newline("A")),string_hash_to_newline(string(gameover)))
	draw_set_valign(fa_top)
	}



}
