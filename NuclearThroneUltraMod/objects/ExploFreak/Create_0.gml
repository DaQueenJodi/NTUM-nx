raddrop = 10
maxhealth = 5
meleedamage = 2
size = 1



event_inherited()
spr_idle = sprExploFreakIdle
spr_walk = sprExploFreakWalk
spr_hurt = sprExploFreakHurt
spr_dead = sprExploFreakDead

snd_hurt = sndExploFreakHurt
snd_dead = sndExploFreakDead
snd_mele = sndExploFreakKillself

//behavior
alarm[1] = 50+random(30)

walk = 0

