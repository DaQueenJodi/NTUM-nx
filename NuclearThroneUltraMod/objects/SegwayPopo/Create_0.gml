raddrop = 0
maxhealth = 9
meleedamage = 0
size = 1

event_inherited()

friction = 0.2

spr_idle = sprSegwayIDPDIdle
spr_walk = sprSegwayIDPDWalk
spr_hurt = sprSegwayIDPDHurt
spr_dead = sprSegwayIDPDDead

male=choose(false,true);
if male
{
snd_hurt = sndGruntHurtM
snd_dead = sndGruntDeadM
}
else
{
snd_hurt = sndGruntHurtF
snd_dead = sndGruntDeadF
}

team = 3

//behavior
walk = 0
grenades = 4
gunangle = random(360)
alarm[1] = 7+random(10)

if instance_exists(Player)
{
if scrMeleeWeapons()==true//Player.wep_type[Player.wep] = 0 || Player.wep = 24 || Player.wep = 36 || Player.wep = 53 || Player.wep=198 || Player.wep=37|| Player.wep=126|| Player.wep=108|| Player.wep=109|| Player.wep=123 || Player.wep = 222|| Player.wep=239 || Player.wep=220//if Player.wep_type[Player.wep]==0 // You are holding a melee weapon
    {
    alarm=1+random(2)//go aggro hes got a melee weapon
    }
}


wkick = 0
angle = 0

freeze = 0
if instance_exists(Player)
{
lastx = Player.x
lasty = Player.y
}
else
{
lastx = x
lasty = y
}
canexplo=false;
stuck=false;

