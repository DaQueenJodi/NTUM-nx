snd_play(sndFlareExplode)
repeat(20)
{
with instance_create(x-lengthdir_x(8,direction),y-lengthdir_y(8,direction),TrapFire)
{motion_add(random(360),random(2)+4)
team = other.team}}

