event_inherited();
image_angle = random(360)
motion_add(random(360),random(1.5)+0.2)
friction = 0.01
image_speed = 0
image_index = random(5)

image_xscale = 0.6
image_yscale = 0.6
rot = (1+random(3))*choose(1,-1)
growspeed = 0.003+random(0.002)

team = 0
typ = 0//2

if instance_exists(Player)
{//frog
if Player.race=23
team = 2;
}

dmg=3;

if instance_exists(Player)
{
//FROG POTENCY
if Player.ultra_got[92]
dmg=4;

}

