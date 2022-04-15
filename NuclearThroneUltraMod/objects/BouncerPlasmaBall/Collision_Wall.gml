
move_bounce_solid(true);

image_xscale-=0.2;
image_yscale-=0.2;

instance_create(x,y,Dust)


snd_play(sndShotgunHitWall,0.05,true,true,1,false);

