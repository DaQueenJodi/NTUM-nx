raddrop = 6
maxhealth = 4
meleedamage = 3
size = 0

event_inherited()

spr_idle = sprMimicIdle
spr_walk = sprMimicFire
spr_hurt = sprMimicHurt
spr_dead = sprMimicDead


//behavior
alarm[1] = 90+random(150)

if place_free(x,y-12)
move_contact_solid(90,12)

