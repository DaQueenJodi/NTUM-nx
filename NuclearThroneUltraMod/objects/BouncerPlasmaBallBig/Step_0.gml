

if BackCont.shake < 2
BackCont.shake = 2

if(image_xscale<0.5)
{instance_destroy();}


if instance_exists(Player)
{
    if Player.race=11
    {
    speed+=0.5;
    if speed>9
    {
    speed=9;
    }
    }
    else if(speed>6)
    {speed=6;}
}
else if(speed>6)
{speed=6;}

if(image_xscale<nomscale)
{
image_xscale+=0.02;
image_yscale+=0.02;
}
else
{
image_xscale=nomscale;
image_yscale=nomscale;
}
if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,false,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,false,true)) ){
instance_destroy();
}

with instance_create(x+random(16)-8,y+random(32)-16,PlasmaFX)
{
	sprite_index = sprBouncerPlasmaEffect;
motion_add(other.direction+random(30)-15,random(2))
image_xscale+=0.1;
image_yscale+=0.1;
}

image_angle = direction;