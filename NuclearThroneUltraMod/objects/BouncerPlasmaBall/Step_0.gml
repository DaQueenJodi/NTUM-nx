
if(image_xscale<0.5)
{instance_destroy();}

if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5;
    if speed>10
    {
    speed=10;
    }
    }
    else if(speed>7)
    {speed=7;}
}
else if(speed>7)
{speed=7;}



if(image_xscale<1)
{
image_xscale+=0.02;
image_yscale+=0.02;
}
else
{
image_xscale=1;
image_yscale=1;
}

with instance_create(x+random(8)-4,y+random(16)-8,PlasmaFX)
{
	sprite_index = sprBouncerPlasmaEffect;
motion_add(other.direction+random(30)-15,random(2))
}

image_angle = direction;