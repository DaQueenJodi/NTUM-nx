/// @description Bounce
instance_create(x+hspeed,y+vspeed,SmallExplosion);
move_bounce_solid(false);
snd_play(sndExplosionS,0.1,true);
instance_create(x,y,Smoke);
hits--;
if hits < 0
		instance_destroy();