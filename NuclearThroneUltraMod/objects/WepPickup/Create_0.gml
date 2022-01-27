with (other) {
image_angle = random(360)
image_speed = 0
friction = 0.4
motion_add(random(360),0.5+random(1))

rotspeed = (random(1)+1)*choose(1,-1)

pickedup=false;

oneweponly=false

if UberCont.opt_gamemode=1||UberCont.opt_gamemode=11||UberCont.opt_gamemode=13||UberCont.opt_gamemode=14{//one weapon only
alarm[0]=1;
oneweponly=true;}

/*WEAPON MODS
mod1[]
mod2[]
mod3[]
0 nothing
1 toxic
2 explosive
3 flame
4 frost
5 blood
6 lightning
7 kraken
*/
wepmod1=0;
if instance_exists(Player)
{
if Player.skill_got[30]//power craving
{
wepmod1=irandom_range(1,12);
}
}
wepmod2=0;
wepmod3=0;
wepmod4=0;
//name="IF YOU SEE THIS REPORT BUG TO @ERDEPPOL"

/* */
}
/*  */
