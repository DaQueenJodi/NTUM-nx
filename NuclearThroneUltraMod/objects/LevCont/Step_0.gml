__view_set( e__VW.XView, 0, 0 )
__view_set( e__VW.YView, 0, 0 )
if UberCont.opt_gamemode == 28 //ALL MUTATION CHOICES
{
	var spd = 18;
	if mouse_wheel_down() || keyboard_check_pressed(vk_right){
		if scroll < scrollWidth
		{
			with SkillIcon {
				x -= spd;
			}
			with UltraIcon {
				x -= spd;
			}
			scroll += spd;
		}
		
	}
	else if mouse_wheel_up() || keyboard_check_pressed(vk_left){
		if scroll > 0 
		{
			with SkillIcon {
				x += spd;
			}
			with UltraIcon {
				x += spd;
			}
			scroll -= spd;
		}
	}
}
/*if Player.joyaim = 1
{
joy_update()


if Player.crownpoints = 0{
//SKILL STUFF

if Player.crown != 8
display_mouse_set(view_xview+view_wview/2-72+pick*48,view_yview+view_hview-24)//optimise
else
display_mouse_set(view_xview+view_wview/2,view_yview+view_hview-24)//optimise

if joy_x(0) > 0.4 or -joy_x(0) > 0.4
{
if joy_x(0) > 0.4 and canmove = 1
{
if pick < 3
pick += 1
else
pick = 0
canmove = 0
}
if -joy_x(0) > 0.4 and canmove = 1
{
if pick > 0
pick -= 1
else
pick = 3
canmove = 0
}
}
else
canmove = 1
}
else
{
//CROWN STUFF
display_mouse_set(view_xview+24+pick*32,view_yview+view_hview-24)//optimise

if joy_x(0) > 0.4 or -joy_x(0) > 0.4
{
if joy_x(0) > 0.4 and canmove = 1
{
if pick < crownmax
pick += 1
else
pick = 0
canmove = 0
}
if -joy_x(0) > 0.4 and canmove = 1
{
if pick > 0
pick -= 1
else
pick = crownmax
canmove = 0
}
}
else
canmove = 1
}

}

/* */
/*  */
