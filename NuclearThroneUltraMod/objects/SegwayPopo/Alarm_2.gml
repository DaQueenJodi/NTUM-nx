/// @description Fire
snd_play(sndLaser)


with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3+9
team = other.team
event_perform(ev_alarm,0)}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3
team = other.team
event_perform(ev_alarm,0)}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3-9
team = other.team
event_perform(ev_alarm,0)}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3+18
team = other.team
event_perform(ev_alarm,0)}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3-18
team = other.team
event_perform(ev_alarm,0)}



Sleep(10);
BackCont.shake += 2
wkick = 10

