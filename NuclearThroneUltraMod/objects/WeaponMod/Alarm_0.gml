/// @description apply mod and give wep

if (wepmod1==0)
{wepmod1=wepmod;}
else if (wepmod2==0)
{wepmod2=wepmod;}
else if (wepmod3==0)
{wepmod3=wepmod;}
else if instance_exists(Player) && Player.skill_got[30]&&wepmod4==0//power craving
{
    wepmod4=wepmod;
    scrUnlockCSkin(17,"FOR ADDING FOUR MODS#TO ONE WEAPON",0);
}
else
{
	//Cycle mods
	if instance_exists(Player) && Player.skill_got[30]
		wepmod4 = wepmod3;
	wepmod3 = wepmod2;
	wepmod2 = wepmod1;
	wepmod1 = wepmod;
}

/*wepmod1=wepmod;
wepmod2=wepmod;
wepmod3=wepmod;*/

if curse=1//ITS CURSED YOU WOT!? LETS FIGHT!
{
snd_play(sndStatueDead);



with CrownPed {instance_create(x,y,GuardianStatue);}//curse!

if instance_exists(GuardianStatue)
{
with instance_nearest(x,y,GuardianStatue)
my_health = 0
}

}

snd_play(sndThunder);
repeat(6){

with instance_create(x+random(8)-4,y+random(8)-4,Smoke)
motion_add(random(360),random(5));

    with instance_create(x,y,Lightning)
    {image_angle = random(360);
    team = 2;
    ammo = 8+random(8);
    event_perform(ev_alarm,0)
    visible = 0
    with instance_create(x,y,LightningSpawn)
    image_angle = other.image_angle}
    
}

            with instance_create(x,y,WepPickup)
            {
            pickedup=true;
            depth=-9;
            image_angle=other.image_angle;
            scrWeapons()
            oneweponly=false;//drop it in one wep only gmode
            wep=other.wep
            name = wep_name[wep]
            ammo = 0
            type = wep_type[wep]
            curse = other.curse
            wepmod1=other.wepmod1;
            wepmod2=other.wepmod2;
            wepmod3=other.wepmod3;
            wepmod4=other.wepmod4;
            sprite_index = wep_sprt[wep]
            
            //show_message("IN PICKUP: "+string(wepmod1)+string(wepmod2)+string(wepmod3) );
            }

/* */
/*  */
