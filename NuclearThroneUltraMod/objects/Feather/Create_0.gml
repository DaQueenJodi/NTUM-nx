alarm[0]=30+random(120);
xx=x;
yy=y;

COS=100+irandom(100);
SIN=100+irandom(100);

SCALE=random(1)

image_xscale=choose(1,-1);

COSDIR=choose(true,false);

SINDIR=choose(true,false);

XSPEED=random(2)-1;

image_angle=random(360);

ANGLEDIR=choose(true,false);

motion_add(random(360),0.2+random(1));

friction=0.2;

ROTATIONSPEED=random(0.2);

image_speed=0;
image_index=0;

skin = 1

if instance_exists(Player)
{
skin = Player.bskin;
}

if skin=1
image_index=3;
else if skin = 2
image_index=4;

