raddrop = 50
maxhealth = 340
meleedamage = 0;
size = 5

if UberCont.loops>1
maxhealth=230;

event_inherited()

spr_idle = sprInvertedBigMachineIntro
spr_walk = sprInvertedBigMachineIdle
spr_hurt = sprInvertedBigMachineHurt
spr_dead = sprInvertedBigMachineDead

snd_hurt = sndNothingHurtHigh
snd_dead = sndNothingTaunt

//behavior
gunangle = random(360)
alarm[1] = 120+random(90)
alarm[2]=30+random(20);//intro
wkick = 0
image_speed=0.4;

instance_create(x+64,y+32,InvertedBigMachineTurret);

instance_create(x-64,y+32,InvertedBigMachineTurret);



if UberCont.opt_gamemode = 6 && instance_exists(Player)
{
Player.x=x;
Player.y=y+124;
}


if instance_exists(Player)
{
if Player.loops>0
{//LOOP
instance_create(x-32,y+32,InvertedBigMachineTurret);
instance_create(x+32,y+32,InvertedBigMachineTurret);

}
}

if instance_exists(Player)
{
if Player.loops>2
{//LOOP
instance_create(x-16,y-16,InvertedBigMachineTurret);
instance_create(x+16,y-16,InvertedBigMachineTurret);
}
}


instance_create(x,y,BigMachineMask);

friction=4;

ammo=0;

