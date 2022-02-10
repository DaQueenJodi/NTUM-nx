//instance_destroy()
//instance_create(x,y,Dust)
move_bounce_solid(true);
//if !sound_isplaying(sndBouncerHitWall)
//snd_play(sndBouncerHitWall)

audio_stop_sound(sndBouncerHitWall)
audio_sound_pitch(sndBouncerHitWall,random_range(0.6,1.4))
audio_play_sound(sndBouncerHitWall,100,0)



hitWall+=1;
if hitWall>maxWallHits{
instance_destroy();
instance_create(x,y,Dust);}

