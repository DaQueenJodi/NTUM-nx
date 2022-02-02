if instance_exists(Player)
{
var sp = Player.sheepPower;
alpha = clamp((sp-2)/Player.sheepPowerToHaveEffect,0.1,1);


image_xscale=((sp)*0.1)+1;
image_yscale=((sp)*0.1)+1;
if image_xscale<1.7
image_xscale=1.7;

if image_yscale<1.7
image_yscale=1.7;

x=Player.x;
y=Player.y;
image_angle=Player.direction;
if (sp > Player.sheepPowerToHaveEffect)
{
	    if Player.ultra_got[49]==1{
	instance_create(x+random(16)-8,y+random(30)-15,Smoke);
	}else{
	instance_create(x+random(16)-8,y+random(30)-15,Dust);}

	with BackCont{
	if shake<2
	shake += sp*0.2;
	}
	with Player
	alarm[3]=4;//imunity
}
else
{
	alpha *= 0.5;
}
}
else{instance_destroy();}


if room_speed=20
instance_create(x+random(16)-8,y+random(30)-15,Smoke);

