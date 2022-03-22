ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_2d(sndLaser,0.3,true)

if place_meeting(mouse_x,mouse_y,Floor)
{
with instance_create(mouse_x,mouse_y,IonImpact)
{
team = other.team}
}

BackCont.shake += 3
creator.wkick = 6}


if ammo <= 0
instance_destroy()

