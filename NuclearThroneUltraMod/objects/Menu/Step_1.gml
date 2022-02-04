if mode= 0
{
//TITLE SCREEN
if KeyCont.key_fire[p] = 1
{
mode = 1

with MusCont
{
if alarm[0] > 0
alarm[0] = 1
}

num = 0
dix = 0
diy = 0
repeat(racemax+1)
{
with instance_create(0,0,CharSelect)
num = other.num
num += 1
}
instance_create(x,y,LoadoutSelect);
instance_create(x,y,CreditsSelect)
instance_create(x,y,StatsSelect)
instance_create(x,y,QuitSelect)
instance_create(x,y,OptionSelect)
instance_create(x,y,OptionSelect2)
instance_create(x,y,UpdateSelect)
instance_create(x,y,Cheatcode);
exit;
}
}

if mode = 1
{
if KeyCont.key_spec[p] = 1 and CreditsSelect.selected = 0 and StatsSelect.selected = 0 //and OptionSelect2.selected=0
{
//if OptionSelect.selected = 1
//room_goto(romInit)
//if OptionSelect2.selected = 1
//room_goto(romInit)
with UberCont
scrSave();

with LoadoutSelect
instance_destroy()
with CharSelect
instance_destroy()
with CreditsSelect
instance_destroy()
with OptionSelect
instance_destroy()
with OptionSelect2
instance_destroy()
with UpdateSelect
instance_destroy()
with GameModeUpDown
instance_destroy();
with QuitSelect
instance_destroy()
logoin = 240
mode = 0
image_index = 0
alarm[0] = 40
exit;
}

}

