//GAMEMODE UNLOCKABLE argument0=gamemode
if UberCont.race_have[argument0]=0 && (UberCont.opt_gamemode=0 || UberCont.opt_gamemode=8)
{
UberCont.race_have[argument0]=1

with instance_create(x,y,UnlockPopup)
{
mytext=UberCont.race_name[argument0]+"#UNLOCKED#"
+argument1;
}

with UberCont
scrSave();
}
