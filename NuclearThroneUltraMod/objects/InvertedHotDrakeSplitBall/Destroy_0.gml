repeat(8)
{
with instance_create(x,y,TrapFire)
{motion_add(random(360),1+random(4))
team = other.team
move_contact_solid(direction,10)
sprite_index= sprFireLilHunter;}
}

scrDrop(100,0)
scrDrop(3,0)
snd_play(sndExplosion)
instance_create(x,y,Explosion)
audio_stop_sound(sndDragonLoop)

BackCont.shake += 5

repeat(20){
with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+random(2)-1,1+random(12))
team = other.team
sprite_index= sprFireLilHunter;
//move_contact_solid(direction,80)
image_speed = 0.3+random(0.2)}


with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+180+random(2)-1,1+random(12))
team = other.team
sprite_index= sprFireLilHunter;
//move_contact_solid(direction,80)
image_speed = 0.3+random(0.2)}


with instance_create(x,y,TrapFire)
{motion_add(other.image_angle-90+random(2)-1,1+random(12))
team = other.team
sprite_index= sprFireLilHunter;
//move_contact_solid(direction,80)
image_speed = 0.3+random(0.2)}


with instance_create(x,y,TrapFire)
{motion_add(other.image_angle+90+random(2)-1,1+random(12))
team = other.team
sprite_index= sprFireLilHunter;
//move_contact_solid(direction,80)
image_speed = 0.3+random(0.2)}


}


