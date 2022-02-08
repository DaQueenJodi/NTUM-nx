if paused = 1
{
//QUICK RESTART
if ( keyboard_check_pressed(ord("R")) || gamepad_button_check(0,gp_face3) )//(gamepad_button_check(0,gp_stickl) && gamepad_button_check(0,gp_stickr)) )
{
instance_activate_all()
audio_stop_all();
paused = 0
if instance_exists(Player)
kills=Player.kills
with Player
instance_destroy()
snd_play(sndMutant0Cnfm)
race = UberCont.racepick
crown = 1
//scrRaces()
//scrCrowns()
var ranChar = false;
if race = 0
{
	ranChar = true;
	do race = ceil(random(racemax)) until race_have[race] = 1
}
if crown = 0
crown = ceil(random(crownmax))
with WepPickup
instance_destroy();
draw_texture_flush();//Free memory (removes all loadedness of texture pages, txp for all areas for example) meaning sprites for area 7 & others aren't loaded when you restart

with instance_create(x,y,GenCont)
{race = other.race
crown = other.crown}
instance_create(x,y,Player)
with Player
{
	randomlySelected = ranChar;
	restarted = true;	
}
debug("BIG CHUNK RESTART");
room_restart()
exit;
}
instance_activate_object(KeyCont)
with KeyCont{
scrKeyContStep()}
//RETURN TO GAME
if keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("P")) or keyboard_check_pressed(vk_f1) or mouse_check_button_pressed(mb_right) or KeyCont.key_back[0] = 1
or gamepad_button_check(0,gp_face2) or gamepad_button_check(0,gp_start) or gamepad_button_check(0,gp_select)
{
with option
instance_destroy()

instance_activate_all()

with TopCont
bloomAlpha=UberCont.opt_bloom;

if(instance_exists(Marker)){
Cursor.image_index=UberCont.opt_crosshair;
}else{
Cursor.image_index=UberCont.opt_crosshair;}

paused = 0
}
//RETURN TO MENU
if keyboard_check_pressed(vk_enter) or gamepad_button_check(0,gp_face4) && !instance_exists(PlayerSpawn)
{
instance_activate_all()
paused = 0
if instance_exists(Player)
kills=Player.kills
with Player
instance_destroy()
scrRestart()
draw_texture_flush();//free texture memory
}
//QUIT
if ( keyboard_check_pressed(ord("Q")) or ( gamepad_button_check(0,gp_shoulderr) && gamepad_button_check(0,gp_shoulderrb) 
&& gamepad_button_check(0,gp_shoulderl) && gamepad_button_check(0,gp_shoulderlb) ) )
{
draw_texture_flush();//probably not necesary, but may aswell?
game_end()}
}
else
{

//NOT PAUSED

if (keyboard_check_pressed(vk_escape)or KeyCont.key_paus[0] = 1 || (!instance_exists(Vlambeer)&&(!window_has_focus()) && public == 1) ) and !instance_exists(GenCont)
{
if keyboard_check_pressed(vk_escape) and instance_exists(Menu)
{
if !instance_exists(OptionSelect)
game_end()
else if OptionSelect.selected = 0 and CreditsSelect.selected = 0 and StatsSelect.selected = 0 and OptionSelect2.selected = 0 and UpdateSelect.selected = 0
game_end()
else
{
scrRestart()
}
}
else if instance_exists(Vlambeer)
game_end()
else if instance_exists(Player)///PAUSE IN-GAME
{
kills=Player.kills
pauseimg = sprite_create_from_surface(application_surface,0,0,surface_get_width(application_surface),surface_get_height(application_surface),0,0,0,0)
//cursor_sprite=sprCrosshair
//with Cursor
//instance_destroy();

instance_deactivate_all(1)
instance_activate_object(BackCont);
instance_activate_object(MusCont);
//instance_activate_object(TopCont);//hmm?
instance_activate_object(Cursor);
with Cursor{
sprite_index=sprCrosshair;
image_index=UberCont.opt_crosshair;}
//instance_create(x,y,Cursor);

instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+32,MusVolSlider)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+40,SfxVolSlider)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8,__view_get( e__VW.YView, 0 )+48,AmbVolSlider)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+72,FullScreenToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("00")),__view_get( e__VW.YView, 0 )+80,CursorUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("0")),__view_get( e__VW.YView, 0 )+88,SideArtUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+96,BloomUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+104,ShadowToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+112,HighQualityToggle)
//instance_create(view_xview+view_wview/2+10+string_width("OFF"),view_yview+136,GamePadToggle)
//instance_create(view_xview+view_wview/2+10+string_width("100%"),view_yview+144,AutoAimUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+168,ShakeUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+174,FreezeFrameUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")),__view_get( e__VW.YView, 0 )+182,LoadingScreenSpeedUpDown)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+190,MouseCPToggle)
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+198,BossIntroToggle);
instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")),__view_get( e__VW.YView, 0 )+206,TimerToggle);


paused = 1
}
}
}

///Timer

if !instance_exists(GenCont) && !instance_exists(Menu) && !instance_exists(Vlambeer)
{

if paused=0
{

time_microseconds+=02;

if time_microseconds>=60
{
time_seconds+=1;
time_microseconds=00;
}

if time_seconds>=60
{
time_minutes+=1;
time_seconds=0;
}

if time_minutes>=60
{
time_hours+=1;
time_minutes=0;
}

}

}

///CAPTURE DA MOUSE AIRHORN.WAV
if paused = 0 and opt_mousecp = 1 and window_has_focus()=true && !instance_exists(Menu) && !instance_exists(GenCont) && !instance_exists(LevCont)&& !instance_exists(Vlambeer)//and (mouse_x < view_xview or mouse_y < view_yview or mouse_x > view_xview+view_wview or mouse_y > view_yview+view_hview)
{

var mox=display_mouse_get_x();
var moy=display_mouse_get_y();

if mox > window_get_x()+window_get_width()-12 
mox = window_get_x()+window_get_width()-12;
if mox < window_get_x()+12
mox = window_get_x()+12;
if moy > window_get_y()+window_get_height()-12
moy = window_get_y()+window_get_height()-12;
if moy < window_get_y()+12
moy = window_get_y()+12;

if mox > display_get_dpi_x()+display_get_width()-12   
mox = display_get_dpi_x()+display_get_width()-12;
if mox < display_get_dpi_x()+12
mox = display_get_dpi_x()+12;
if moy > display_get_dpi_y()+display_get_height()-12
moy = display_get_dpi_y()+display_get_height()-12;
if moy < display_get_dpi_y()+12
moy = display_get_dpi_y()+12;

display_mouse_set(mox,moy);

}

