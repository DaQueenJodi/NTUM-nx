darkness = 0
dark=noone;
if instance_exists(Player)
{
if Player.area == 115 || round(Player.area*0.5) = Player.area*0.5 && Player.area != 10 
&& Player.area != 114 && UberCont.opt_gamemode != 25 && Player.area!=104&&Player.area!=8&&Player.area!=108
darkness = 1
}
if darkness = 1
{dark = surface_create(__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
surface_set_target(dark)
draw_clear(c_white)
surface_reset_target()}

gameovertime = 0
wave = 0
fogscroll = 0

bloomAlpha=UberCont.opt_bloom;