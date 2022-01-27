scrWeapons();
scrRaces();
scrStartingWeapons();
race=0;
upscale=1;
downscale=1;
scale=1;
wepopenscale=1;
wep=0;

wepmenuopen=false;

skin=0;
if instance_exists(Menu)
{
race=Menu.race;
skin=UberCont.skin[race];
}

