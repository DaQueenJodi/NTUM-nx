raddrop = 8
maxhealth = 12
meleedamage = 0
size = 1
bloodempty=0;

event_inherited()

spr_idle = sprJungleAssassinIdle
spr_walk = sprJungleAssassinWalk
spr_hurt = sprJungleAssassinHurt
spr_dead = sprJungleAssassinDead


snd_hurt = sndJungleAssassinHurt
snd_dead = sndJungleAssassinDead

snd_play(sndJungleAssassinWake)

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(30)
wepangle = choose(-140,140)
wepflip = 1

dodge=0;

