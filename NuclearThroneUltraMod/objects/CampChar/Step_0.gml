//can = 1
/*
if instance_exists(OptionSelect)// || !instance_exists(CharSelect)//OPTIMISE aka remove this
{
if OptionSelect.selected = 1 or CreditsSelect.selected = 1 or StatsSelect.selected = 1 or OptionSelect2.selected = 1
can = 0
}

if mouse_check_button_pressed(mb_left) and mouse_x > x-16 and mouse_x < x+16 and mouse_y > y-16 and mouse_y < y+16 and mouse_y > view_yview+Menu.widescreen and mouse_y < view_yview+view_hview-Menu.widescreen and can = 1
{
if Menu.race = num
{
with Menu
{
//snd_play(sndConfirm)

execute_string("snd_cnfm = sndMutant"+string(race)+"Cnfm")
snd_play(snd_cnfm)
UberCont.racepick = Menu.race
if race = 0
{do race = ceil(random(racemax)) until race_have[race] = 1}
if crown = 0
crown = ceil(random(crownmax))
with instance_create(x,y,GenCont)
{race = other.race
crown = other.crown}
instance_create(x,y,SpiralCont)
UberCont.race = race
instance_create(x,y,Player)

room_restart()
exit;
}
}
else
{
//snd_play(sndSelect)

execute_string("snd_slct = sndMutant"+string(num)+"Slct")
snd_play(snd_slct)
Menu.race = num
}
}

/* */
/*  */
