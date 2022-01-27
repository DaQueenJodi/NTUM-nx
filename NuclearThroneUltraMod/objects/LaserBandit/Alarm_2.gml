wkick = 4
snd_play(sndLaser)

with instance_create(x,y,EnemyLaser)
{image_angle = other.gunangle+random(30)-15
team = other.team
event_perform(ev_alarm,0)}

