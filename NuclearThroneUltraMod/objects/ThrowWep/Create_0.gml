event_inherited();
image_angle = random(360)
image_speed = 0
friction = 0.4
motion_add(random(360),0.5+random(1))

rotspeed = (random(1)+1)*choose(1,-1)

if UberCont.opt_gamemode=1{//one weapon only
instance_destroy();
instance_create(x,y,AmmoPickup);}

/*THIS IS HOW IT SHOULD WORK

damagers have a DAMAGE
their collision can be NORMAL, PIERCING or PIERCING AT OVERKILL (piercing checks per frame)
their type can be 0, DEFLECTABLE, DESTRUCTABLE or DEFLECTORS
they have a FORCE and can be 0 or DIRECTIONAL */

typ = 1 //0 = normal, 1 = deflectable, 2 = destructable, 3 = deflectable



theWepPickup=0;
alarm[0]=80;
pierce = false;

if instance_exists(Player)
{
	if Player.skill_got[5] =1//thronebutt
	alarm[0]=51;//return to hand
	
	if Player.ultra_got[53] == 1
		pierce = true;
	var multiplier;
	multiplier=1;

	multiplier=(Player.ultra_got[53]*0.2)+1;//Ultra A
	multiplier+=Player.skill_got[5]*0.2;

	dmg=(13+2*Player.level)*multiplier
}
else
dmg=13;//22

dontteleport=false;
returnFX = true;

    wep=0
    curse = 0
    wepmod1=0
    wepmod2=0
    wepmod3=0
    wepmod4=0

stopSpeed = 2;