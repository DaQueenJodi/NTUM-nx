//if speed > 6 and !sound_isplaying(sndShotgunHitWall)
//snd_play(sndShotgunHitWall)

if speed > 6 {
audio_stop_sound(sndShotgunHitWall)
audio_sound_pitch(sndShotgunHitWall,random_range(0.9,1.1))
audio_play_sound(sndShotgunHitWall,100,0)
}

move_bounce_solid(true)
speed *= 0.8
speed += wallbounce
wallbounce *= 0.9
instance_create(x,y,Dust)

if speed > 18
speed = 18

