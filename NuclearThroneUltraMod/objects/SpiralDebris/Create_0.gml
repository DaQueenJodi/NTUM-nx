dist = random(135)+10
angle = random(360)
turnspeed = random(8)-4
rotspeed = random(16)-8

image_index = random(image_number)
image_speed = 0
if instance_exists(Player)
{
var area;
area=Player.area;
if area==104
area=103;

switch(area)
{
case 0:sprite_index = sprDebris0; break;
case 1:sprite_index = sprDebris1; break;
case 2:sprite_index = sprDebris2; break;
case 3:sprite_index = sprDebris3; break;
case 4:sprite_index = sprDebris4; break;
case 5:sprite_index = sprDebris5; break;
case 6:sprite_index = sprDebris6; break;
case 7:sprite_index = sprDebris7; break;
case 8:sprite_index = sprDebris8; break;
case 100:sprite_index = sprDebris100; break;
case 102:sprite_index = sprDebris102; break;
case 103:sprite_index = sprDebris103; break;
case 105:sprite_index = sprDebris105; break;
case 106:sprite_index = sprDebris106; break;
case 107:sprite_index = sprDebris107; break;
case 101:sprite_index = sprDebris101; break;
case 109:sprite_index = sprDebris109; break;
case 108:sprite_index = sprDebris108; break;
case 110:sprite_index = sprDebris110; break;
case 111:sprite_index = sprDebris111; break;
case 112:sprite_index = sprDebris112; break;
default: sprite_index = sprDebris0; break;
}

if random(50) < 1{

if Player.area = 1
sprite_index = sprBanditHurt

if Player.area = 2
sprite_index = sprRatHurt

if Player.area = 3
sprite_index = sprCarIdle

if Player.area = 4
sprite_index = sprSpiderHurt

if Player.area = 5
sprite_index = sprFrozenCar

if Player.area = 6
sprite_index = sprFreak1Hurt

if Player.area = 102
sprite_index = sprSlice

image_index = 1
rotspeed = (10+random(20))*choose(1,-1)}

}

image_xscale = 0
image_yscale = 0
grow = 0

image_angle = random(360)

