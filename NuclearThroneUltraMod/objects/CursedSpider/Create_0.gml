raddrop = 9
maxhealth = 18
meleedamage = 3
size = 1

event_inherited()

spr_idle = sprInvSpiderIdle
spr_walk = sprInvSpiderWalk
spr_hurt = sprInvSpiderHurt
spr_dead = sprInvSpiderDead

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

