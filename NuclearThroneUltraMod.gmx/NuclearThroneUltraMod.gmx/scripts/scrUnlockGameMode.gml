//GAMEMODE UNLOCKABLE argument0=gamemode
if UberCont.gamemode_have[argument0]=0 && (UberCont.opt_gamemode=0 || UberCont.opt_gamemode=8)
{
UberCont.gamemode_have[argument0]=1

with instance_create(x,y,UnlockPopup)
mytext=UberCont.gamemode[argument0]+ "#GAMEMODE UNLOCKED!#"+argument1

with UberCont
scrSave();

}
