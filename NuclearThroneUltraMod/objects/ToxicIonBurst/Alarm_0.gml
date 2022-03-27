ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play(sndToxicBoltGas,0.1,true);

if place_meeting(mouse_x,mouse_y,Floor)
{
repeat(3)
with instance_create(mouse_x,mouse_y,ToxicThrowerGas)
{
motion_add(random(360),0.1+random(1))}

}

BackCont.shake += 3
creator.wkick = 6}


if ammo <= 0
instance_destroy()

