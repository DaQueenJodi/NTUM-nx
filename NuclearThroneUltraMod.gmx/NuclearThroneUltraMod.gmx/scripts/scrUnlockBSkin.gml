//GAMEMODE UNLOCKABLE argument0=gamemode
//race,unlock requirement, gamemode
if UberCont.race_bskin[argument0]=0 && (UberCont.opt_gamemode=argument2 || argument2=0&&UberCont.opt_gamemode=8)
{
UberCont.race_bskin[argument0]=1

with instance_create(x,y,UnlockPopup)
{
mytext=UberCont.race_name[argument0]+"#B-SKIN UNLOCKED#"
+argument1;
}

with UberCont
scrSave();
}
