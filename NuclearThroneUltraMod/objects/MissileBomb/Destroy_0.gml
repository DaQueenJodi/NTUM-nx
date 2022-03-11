/// @description Boom
instance_create(Explosion);
snd_play(sndExplosion);
snd_play(sndClusterOpen);
with instance_create(x,y,MissileBurst2)
{
	team = other.team;
	event_perform(ev_alarm,0) 
}