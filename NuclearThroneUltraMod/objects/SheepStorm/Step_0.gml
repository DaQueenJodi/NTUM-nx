if instance_exists(Player)
{
with BackCont{
if shake<2
shake += Player.sheepPower*0.2;
}

    if Player.ultra_got[49]==1{
instance_create(x+random(16)-8,y+random(30)-15,Smoke);
}else{
instance_create(x+random(16)-8,y+random(30)-15,Dust);}

image_xscale=((Player.sheepPower)*0.1)+1;
image_yscale=((Player.sheepPower)*0.1)+1;
if image_xscale<1.7
image_xscale=1.7;

if image_yscale<1.7
image_yscale=1.7;

x=Player.x;
y=Player.y;
image_angle=Player.direction;
}
else{instance_destroy();}

with Player
alarm[3]=4;//imunity

if room_speed=20
instance_create(x+random(16)-8,y+random(30)-15,Smoke);

