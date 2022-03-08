ammo -= 1

alarm[0] = time

//FIRING
audio_stop_sound(sndSeekerCannon)
audio_sound_pitch(sndSeekerCannon,random_range(0.9,1.1))
audio_play_sound(sndSeekerCannon,100,0)

with instance_create(x,y,SwarmBolt)
{motion_add(other.ang,2)
image_angle = direction
team = other.team}

with instance_create(x,y,SwarmBolt)
{motion_add(other.ang + other.angOffset,2)
image_angle = direction
team = other.team}


ang += angStep;


BackCont.shake += 2

if ammo <= 0
instance_destroy()
else
alarm[0] = time;
