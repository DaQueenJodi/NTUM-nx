ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING
snd_play_2d(sndLaserUpg)

if place_meeting(mouse_x,mouse_y,Floor)
{


with instance_create(mouse_x+random(64)-32,mouse_y+random(64)-32,PlasmaFX)
{motion_add(random(360),2+random(8))
image_speed-=0.1;}

repeat(2){
with instance_create(mouse_x+random(64)-32,mouse_y+random(64)-32,IonImpact){
team = other.team
dmg+=8;
}
with instance_create(mouse_x+random(64)-32,mouse_y+random(64)-32,MiniPlasmaImpact){
team = other.team
dmg+=4;
}
}
}


BackCont.shake += 4
creator.wkick = 6}


if ammo <= 0
instance_destroy()

