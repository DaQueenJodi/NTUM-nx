raddrop = 30
maxhealth = 280
meleedamage = 0
size = 3

event_inherited()

spr_idle = sprBigMachineIntro
spr_walk = sprBigMachineIdle
spr_hurt = sprBigMachineHurt
spr_dead = sprBigMachineDead

snd_hurt = sndNothingHurtHigh
snd_dead = sndNothingTaunt

//behavior
gunangle = random(360)
alarm[1] = 120+random(90)
alarm[2]=30+random(20);//intro
wkick = 0
image_speed=0.4;

instance_create(x+64,y+32,BigMachineTurret);

instance_create(x-64,y+32,BigMachineTurret);



if UberCont.opt_gamemode = 6 && instance_exists(Player)
{
Player.x=x;
Player.y=y+132;
}


if instance_exists(Player)
{
if Player.loops>0
{//LOOP
instance_create(x-32,y+32,BigMachineTurret);
instance_create(x+32,y+32,BigMachineTurret);

}
}

if instance_exists(Player)
{
if Player.loops>2
{//LOOP
instance_create(x-16,y-16,BigMachineTurret);
instance_create(x+16,y-16,BigMachineTurret);
}
}

lasthealth=my_health;

instance_create(x,y,BigMachineMask);

friction=4;

ammo=0;

