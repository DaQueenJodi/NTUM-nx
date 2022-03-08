
move_bounce_solid(false);

image_xscale-=0.4;
image_yscale-=0.4;

instance_create(x,y,Dust)


snd_play(sndShotgunHitWall,random_range(0.98,1.02),true,true,1,false);

