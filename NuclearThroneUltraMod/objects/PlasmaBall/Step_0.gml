
if(image_xscale<0.5)
{instance_destroy();}
if resetSpeed{
speed=0;
motion_add(originalDirection,7)
resetSpeed=false;
friction=0;}

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
image_xscale+=0.1;
image_yscale+=0.1;
}
else
{
image_xscale=1;
image_yscale=1;
}
if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,false,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,false,true)) ){
instance_destroy();
}

with instance_create(x+random(8)-4,y+random(16)-8,PlasmaFX)
{
motion_add(other.direction+random(30)-15,random(2))
}

