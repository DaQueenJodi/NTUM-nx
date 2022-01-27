raddrop = 11
maxhealth = 12
meleedamage = 3
size = 1

if UberCont.loops>1
maxhealth=16;

event_inherited()

spr_idle = sprInvertedSpiderIdle
spr_walk = sprInvertedSpiderWalk
spr_hurt = sprInvertedSpiderHurt
spr_dead = sprInvertedSpiderDead

snd_hurt = sndHitRock

//behavior
walk = 0
alarm[1] = 30+random(90)
maxspeed = 3

if instance_exists(Player)
{
if Player.loops>0
maxspeed = 5
}

dodge=10;

