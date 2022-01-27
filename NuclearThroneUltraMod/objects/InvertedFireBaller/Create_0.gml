raddrop = 5
maxhealth = 20
meleedamage = 0
size = 1

if UberCont.loops>1
maxhealth=25;

event_inherited()
spr_idle = sprInvertedFireBallerIdle
spr_walk = sprInvertedFireBallerIdle
spr_hurt = sprInvertedFireBallerHurt
spr_dead = sprInvertedFireBallerDead
spr_fire = sprInvertedFireBallerFire


snd_dead = sndFrogExplode

//behavior
alarm[1] = 30+random(60)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

