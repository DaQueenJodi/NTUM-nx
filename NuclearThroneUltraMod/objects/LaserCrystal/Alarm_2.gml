///@description Fire
if ammo > 0
{
ammo -= 1
alarm[2] = 5
snd_play(sndLaser,0.01,true)
	sprite_index = spr_fire
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = other.gunangle+random(6)-3
		team = other.team
		event_perform(ev_alarm,0)
	}
}
else
{
sprite_index = spr_idle
}

