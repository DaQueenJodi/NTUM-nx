//if alarm[1]<1
//alarm[1]=2;
instance_destroy();
instance_create(x,y,Dust)
//if !sound_isplaying(sndHitWall)
//snd_play(sndHitWall)

snd_play(sndHitWall,random_range(0.98,1.02),true,true,1,false);