ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
//if !audio_is_playing(sndSwarm)
audio_stop_sound(sndSeekerCannon)
audio_sound_pitch(sndSeekerCannon,random_range(0.9,1.1))
audio_play_sound(sndSeekerCannon,100,0)



with instance_create(x,y,SwarmBolt)
{motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(40)-20),2+random(3))
image_angle = direction
team = other.team
}


BackCont.viewx2 += lengthdir_x(1,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(1,point_direction(x,y,mouse_x,mouse_y)+180)*UberCont.opt_shake
BackCont.shake += 1
creator.wkick = 4
}


if ammo = 0
instance_destroy()

