scrWeapons();
scrRaces();
scrStartingWeapons();
scrCrowns();
race=0;
scale=1;
wepopenscale=1;
wep=0;
imageIndex = 0;

wepmenuopen=false;

skin=0;
if instance_exists(Menu)
{
race=Menu.race;
skin=UberCont.skin[race];
}
arrowOpenerY = 59;
crownIcons = [];