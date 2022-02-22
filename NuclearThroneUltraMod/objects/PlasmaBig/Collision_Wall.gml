friction=0.4;

var olddir, oldspeed;
olddir = direction
oldspeed = speed

motion_add(olddir,speed)
speed = oldspeed

if hspeed > 0 and !place_free(x+hspeed,y)
{do hspeed -= friction until place_free(x+hspeed,y) or hspeed <= 0}
else
if hspeed < 0 and !place_free(x+hspeed,y)
{do hspeed += friction until place_free(x+hspeed,y) or hspeed >= 0}

if vspeed > 0 and !place_free(x,y+vspeed)
{do vspeed -= friction until place_free(x,y+vspeed) or vspeed <= 0}
else
if vspeed < 0 and !place_free(x,y+vspeed)
{do vspeed += friction until place_free(x,y+vspeed) or vspeed >= 0}

image_xscale-=0.16;
image_yscale-=0.16;

instance_create(x,y,Dust)
snd_play(sndHitWall,random_range(0.98,1.02),true,true,1,false);


resetSpeed=true;

if( (collision_point(x+lengthdir_x(4,originalDirection+20),y+lengthdir_y(4,originalDirection+20),Wall,true,true))&&(collision_point(x+lengthdir_x(4,originalDirection-20),y+lengthdir_y(4,originalDirection-20),Wall,true,true)) )||(image_xscale<0.7)
{

    with other
    {
    instance_create(x,y,ExplosionNonLethal);
    //instance_create(x,y,FloorExplo)
    //instance_destroy()
    }
}

