if UberCont.opt_highquality=0
{
instance_destroy();
exit;
}

image_speed=0;
image_index=choose(0,1);

if place_meeting(x,y,FloorLava)
instance_destroy();

popo=false;
alarm[0]=1;

