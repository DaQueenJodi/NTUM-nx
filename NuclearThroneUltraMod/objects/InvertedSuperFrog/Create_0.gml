raddrop = 20
maxhealth = 15
meleedamage = 0
size = 1

if UberCont.loops>1
maxhealth=20;

event_inherited()

spr_idle = sprInvertedSuperFrogIdle
spr_walk = sprInvertedSuperFrogWalk
spr_hurt = sprInvertedSuperFrogHurt
spr_dead = sprInvertedSuperFrogDead


snd_dead = sndSuperFrogExplode

//behavior
alarm[1] = 20+random(40)

if instance_exists(Player)
motion_add(point_direction(Player.x,Player.y,x,y),1)

close = 0

alarm[2] = 5


repeat(16)
instance_create(x,y,ToxicGas)

//Unlock Frog
if instance_number(SuperFrog) > 1 || instance_number(InvertedSuperFrog) > 1 
scrUnlockCharacter(23,"FOR HAVING TWO SUPERFROGS#AT THE SAME TIME")

