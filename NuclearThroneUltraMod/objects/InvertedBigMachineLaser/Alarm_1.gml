/// @description fire laser
if ammo > 0
{
spr_index=spr_fire;
ammo -= 1
alarm[1] = 2
snd_play(sndLaser)
//sprite_index = spr_fire
with instance_create(x,y,EnemyLaser)
{image_angle = other.gunangle;//other.gunangle+random(6)-3
team = 1;
event_perform(ev_alarm,0)}
}
else
{
sprite_index=spr_idle;
alarm[1]=35+random(20);
ammo=4;

if random(7)
scrDrop(16,0);

//sprite_index = spr_idle
}

