alarm[1] = 5+random(5)
if sprite_index != spr_hurt
sprite_index = spr_idle
scrTarget()
if target > 0
{
maxspeed=2
if my_health<maxhealth*0.5
maxspeed=2.5;

if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if random(2)<1 && my_health<maxhealth&&point_distance(x,y,target.x,target.y)>200//heal when player backs off
{
my_health+=10;
with instance_create(x,y-16,HealFX)
depth=-3;
if my_health>maxhealth
my_health=maxhealth;
}
else if random(8) < 1
{//SUCK
direction = point_direction(x,y,target.x,target.y)
snd_play(sndWater2);
snd_play(snd_fire);

speed=0;
image_index = 0
sprite_index = spr_fire
alarm[2]=55+random(25);
walk = 0//alarm[2]+20;
alarm[1] = alarm[2]+15+random(15);
}
else if random(9)<1{
walk=10+random(10);
alarm[1]=walk;
direction = point_direction(x,y,target.x,target.y)+random(20)-10
}
else if random(4)<1{

repeat(1+random(3)){

with instance_create(x+random(16)-8,y+random(16)-8,BoneFish)
raddrop=0;

}
snd_play(choose(sndWater2,sndWater1));
snd_play(snd_fire);
repeat(10)
instance_create(x+lengthdir_x(7+random(6),direction),y+lengthdir_y(7+random(6),direction),Dust);
sprite_index=spr_fire;
//alarm[2]=6;
alarm[1]=2+random(4);
}
if random(2)<1 && my_health<maxhealth&&my_health<maxhealth*0.5//heal cause I'm near death
{
snd_play(sndOasisBossHalfHP);
my_health+=15;
with instance_create(x,y-16,HealFX)
depth=-3;
if my_health>maxhealth
my_health=maxhealth;
}
else if random(5)<1 && my_health<maxhealth//heal zombiefish heal
{
my_health+=10;
with instance_create(x,y-16,HealFX)
repeat(5)
instance_create(x+random(8)-4,y+random(8)-4,Dust);
snd_play(sndHealthPickup);
snd_play(sndWater1);
depth=-3;
if my_health>maxhealth
my_health=maxhealth;
}
else{
direction = point_direction(x,y,target.x,target.y)+random(20)-10

maxspeed=2.8;
if my_health<maxhealth*0.5
maxspeed=3.2;
walk=10+random(20);
alarm[1]=walk+5+random(10);
}
}//wall in between\/
else if random(4)<1{
maxspeed=2.8;
if my_health<maxhealth*0.5
maxspeed=3.2;

walk=6+random(10);
alarm[1]=walk;
direction = point_direction(x,y,target.x,target.y)+random(20)-10}
else if random(5)<1 && my_health<maxhealth//heal cause player is hiding
{
my_health+=10;
with instance_create(x,y-16,HealFX)
repeat(5)
instance_create(x+random(8)-4,y+random(8)-4,Dust);
snd_play(sndHealthPickup);
snd_play(sndWater2);
depth=-3;
if my_health>maxhealth
my_health=maxhealth;
}
else if random(4)<1{
maxspeed=3.8;
if my_health<maxhealth*0.5
maxspeed=4.2;

walk=4+random(8);
alarm[1]=walk;
direction = point_direction(x,y,target.x,target.y)+random(4)-2}
else if random(12)<1{
walk=10+random(12);
alarm[1]=walk;
direction = random(360)}
else{
walk=10+random(15);
alarm[1]=walk+5+random(30);
direction = point_direction(x,y,target.x,target.y)+random(20)-10}
}//no target\/
else if random(10)<2{
motion_add(random(360),0.5)
walk=20+random(10)
alarm[1]=walk;}

