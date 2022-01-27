image_speed = 0
image_index = choose(0,1,2)
image_xscale=choose(1,-1);

depth = -y;

if place_meeting(x,y,prop)
instance_destroy();

if place_meeting(x,y,Floor)
instance_destroy();

if place_meeting(x,y,enemy)
instance_destroy();

