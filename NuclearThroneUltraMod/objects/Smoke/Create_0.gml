if UberCont.opt_highquality=0
{
instance_destroy();
exit;
}

image_angle = random(360)
motion_add(random(360),random(1)+0.5)
friction = 0.1
image_speed = 0
image_index = random(5)

image_xscale = 0.8
image_yscale = 0.8
rot = (1+random(3))*choose(1,-1)
growspeed = random(0.01)/2

