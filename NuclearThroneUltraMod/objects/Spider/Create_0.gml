raddrop = 9
maxhealth = 26//18
meleedamage = 4
size = 1

event_inherited()

spr_idle = sprSpiderIdle
spr_walk = sprSpiderWalk
spr_hurt = sprSpiderHurt
spr_dead = sprSpiderDead

snd_hurt = sndHitRock

//behavior
walk = 0
alarm[1] = 30+random(90)
maxspeed = 3.5

if instance_exists(Player)
{
if Player.loops>0
maxspeed = 5
}

