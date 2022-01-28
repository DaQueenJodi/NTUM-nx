scrDrop(30,1)
event_inherited()
repeat(8)
{
with instance_create(x,y,Flame)
{motion_add(random(360),1+random(2))
team = other.team
move_contact_solid(direction,6)
image_speed=0.5+random(0.2);
sprite_index= sprFireLilHunter;}
}


