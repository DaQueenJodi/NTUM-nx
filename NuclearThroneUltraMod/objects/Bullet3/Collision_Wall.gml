//instance_destroy()
//instance_create(x,y,Dust)
move_bounce_solid(true);
//if !sound_isplaying(sndBouncerHitWall)
//snd_play(sndBouncerHitWall)
snd_play(sndBouncerHitWall,0.1,true,true,1,false,true,0.75);


hitWall+=1;
if hitWall>maxWallHits{
instance_destroy();
instance_create(x,y,Dust);}

