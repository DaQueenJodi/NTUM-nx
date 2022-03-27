ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
x = creator.x
y = creator.y
//FIRING

snd_play(choose(sndWater1,sndWater2,sndBloodLauncher) ,0.1,true);

if place_meeting(mouse_x,mouse_y,Floor)
{

with instance_create(mouse_x,mouse_y,Tentacle)
{image_angle = random(360);
ion=true;
creator=other.id;
team = other.team
ammo = 8
event_perform(ev_alarm,0)
visible = 0
with instance_create(x,y,LightningSpawn)
{
sprite_index=sprTentacleSpawn
image_angle = other.image_angle
}

//repeat(6){
    with instance_create(x,y,FishBoost)
    {
    motion_add( random(360),2+random(4) );
    }//}

}


}

BackCont.shake += 4
creator.wkick = 6}


if ammo <= 0
instance_destroy()

