if other.team != team and other.my_health > 0&&other.id != creator//the thing I hit must not be myself
{


with other//enemy
{
if sprite_index != spr_hurt
{
if instance_exists(Player)
{
if Player.race=24//Elementor's passive
my_health -= other.dmg+2;
else
my_health -= other.dmg
}
else
my_health -= other.dmg//lightning does 6 dmg normal tentacle does 3
sprite_index = spr_hurt
image_index = 0
//motion_add(other.image_angle,4)}
//with Player
motion_add(other.image_angle,4)


//speed=0;
if instance_exists(other.creator){
direction=point_direction(x,y,other.creator.x,other.creator.y);
motion_add(point_direction(x,y,other.creator.x,other.creator.y),0.8);
mp_potential_step(other.creator.x,other.creator.y,3,false)
if place_meeting(x,y,Wall)
{	x = xprevious;
	y = yprevious;	
}
//move_contact_solid(direction,2+random(2))
}

if other.ion=true
{
with instance_create(mouse_x,mouse_y,BloodGrenade)
{
visible=false;
sticky = 0
motion_add(random(360),9+random(6))
image_angle = direction
team = other.team
with instance_create(x,y,BloodStreak){
image_angle = point_direction(x,y,mouse_x,mouse_y)}
alarm[0]=3;
//instance_destroy();
}//}
}
else
{
with other.creator{
//if instance_exists(Player){
if object_index=Player{
if Player.alarm[3]<10//iframes
Player.alarm[3]=10;}//imunity 4
//}



with instance_create(x,y,BloodGrenade)
{
visible=false;
sticky = 0
motion_add(point_direction(x,y,mouse_x,mouse_y)+(random(30)-15),9+random(6))
image_angle = direction
team = other.team
with instance_create(x,y,BloodStreak){
image_angle = point_direction(x,y,mouse_x,mouse_y)}
alarm[0]=3;
//instance_destroy();
}//}

    repeat(2){
    with instance_create(x,y,FishBoost)
    {
    motion_add( point_direction(x,y,mouse_x,mouse_y)+random(60)-30,2+random(4) );
    }}
}
}

}
if instance_exists(other.creator){
direction=point_direction(x,y,other.creator.x,other.creator.y);
motion_add(point_direction(x,y,other.creator.x,other.creator.y),0.4);
mp_potential_step(other.creator.x,other.creator.y,2,false)
//move_contact_solid(direction,2+random(2))
if place_meeting(x,y,Wall)
{	x = xprevious;
	y = yprevious;	
}
}
}







snd_play(other.snd_hurt, other.hurt_pitch_variation)
if random(2)<1
instance_create(x,y,FishBoost)
}

