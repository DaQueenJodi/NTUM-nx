raddrop = 15
maxhealth = 15
meleedamage = 4
size = 0

event_inherited()

spr_idle = sprSuperMimicIdle
spr_walk = sprSuperMimicFire
spr_hurt = sprSuperMimicHurt
spr_dead = sprSuperMimicDead


//behavior
alarm[1] = 90+random(150)

if place_free(x,y-12)
move_contact_solid(90,12)

