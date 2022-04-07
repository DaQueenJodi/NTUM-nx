raddrop = 1
maxhealth = 6//7
meleedamage = 3
size = 1

event_inherited()

spr_idle = sprFreak1Idle
spr_walk = sprFreak1Walk
spr_hurt = sprFreak1Hurt
spr_dead = sprFreak1Dead


snd_hurt = sndFreakHurt
snd_dead = sndFreakDead
snd_mele = sndFreakMelee

//behavior
alarm[1] = 40+random(50)

walk = 0

