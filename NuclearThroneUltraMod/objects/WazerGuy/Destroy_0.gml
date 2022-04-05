scrDrop(40,5)

event_inherited()

snd_play(sndExplosion,0,true);
instance_create(x,y,Explosion);
if alarm[2] > 0
{
	with myLaser
	{
		event_perform(ev_alarm,0);	
	}
}
