ammo -= 1

alarm[0] = time

//FIRING
snd_play_2d(sndRocket)

with instance_create(x,y,Missile)
{motion_add(other.ang,2)
image_angle = direction
team = other.team}
ang += angStep;


BackCont.shake += 2

if ammo <= 0
instance_destroy()
else
alarm[0] = time;
